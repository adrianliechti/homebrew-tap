cask "wingman-app" do
  version "0.21.2"
  sha256 "714d5a5f3c60ed0d41ccf81c271b77d01677ec70536332c7cb97c1d5f3c79c28"

  url "https://github.com/adrianliechti/wingman-agent/releases/download/v#{version}/wingman-app_#{version}_macOS_arm64.zip"
  name "Wingman Agent"
  desc "AI-powered coding assistant desktop app"
  homepage "https://github.com/adrianliechti/wingman-agent"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Wingman Agent.app"

  # The app is not code-signed / notarized, so macOS quarantines the download
  # and refuses to open it. Strip the quarantine attribute on install.
  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/Wingman Agent.app"]
  end

  uninstall quit: ["com.adrianliechti.wingman-agent", "com.wails.Wingman Agent"]

  zap trash: [
    "~/Library/Caches/com.adrianliechti.wingman-agent",
    "~/Library/Caches/com.wails.Wingman Agent",
    "~/Library/HTTPStorages/com.adrianliechti.wingman-agent",
    "~/Library/HTTPStorages/com.wails.Wingman Agent",
    "~/Library/Saved Application State/com.adrianliechti.wingman-agent.savedState",
    "~/Library/Saved Application State/com.wails.Wingman Agent.savedState",
    "~/Library/WebKit/com.adrianliechti.wingman-agent",
    "~/Library/WebKit/com.wails.Wingman Agent",
  ]
end
