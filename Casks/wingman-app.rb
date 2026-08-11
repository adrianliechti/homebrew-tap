cask "wingman-app" do
  version "0.12.18"
  sha256 "d34f67139e1f69ca6eed242878d967ac9ccb7d407548ac7fac3fe19949a2053c"

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
