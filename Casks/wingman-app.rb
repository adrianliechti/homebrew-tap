cask "wingman-app" do
  version "0.16.12"
  sha256 "a78c0b2c5e2a63cb9390a1d512280327b82d7e07eb379bcec8e6de884530eb65"

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
