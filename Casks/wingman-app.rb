cask "wingman-app" do
  version "0.15.4"
  sha256 "1b148eb9c230be3dd119c14ad18716887cf2685d6c5e2a56c844998c2617bcf6"

  url "https://github.com/adrianliechti/wingman-agent/releases/download/v#{version}/wingman-app_#{version}_macOS_arm64.zip"
  name "Wingman Agent"
  desc "AI-powered coding assistant desktop app"
  homepage "https://github.com/adrianliechti/wingman-agent"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "Wingman Agent.app"

  # The app is not code-signed / notarized, so macOS quarantines the download
  # and refuses to open it. Strip the quarantine attribute on install.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Wingman Agent.app"]
  end

  uninstall quit: "com.wails.Wingman Agent"

  zap trash: [
    "~/Library/Caches/com.wails.Wingman Agent",
    "~/Library/HTTPStorages/com.wails.Wingman Agent",
    "~/Library/Saved Application State/com.wails.Wingman Agent.savedState",
    "~/Library/WebKit/com.wails.Wingman Agent",
  ]
end
