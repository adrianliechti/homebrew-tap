cask "bridge-app" do
  version "0.3.2"
  sha256 "2260a397a9a3a00e9a1f0dfdf42194639c3e2013ef09a1f3c405462b26adfbec"

  url "https://github.com/adrianliechti/bridge/releases/download/v#{version}/bridge-app_#{version}_macOS_arm64.zip"
  name "Bridge"
  desc "Kubernetes and Docker dashboard desktop app"
  homepage "https://github.com/adrianliechti/bridge"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Bridge.app"

  # The app is not code-signed / notarized, so macOS quarantines the download
  # and refuses to open it. Strip the quarantine attribute on install.
  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/Bridge.app"]
  end

  uninstall quit: ["com.adrianliechti.bridge", "com.wails.Bridge"]

  zap trash: [
    "~/Library/Caches/com.adrianliechti.bridge",
    "~/Library/Caches/com.wails.Bridge",
    "~/Library/HTTPStorages/com.adrianliechti.bridge",
    "~/Library/HTTPStorages/com.wails.Bridge",
    "~/Library/Saved Application State/com.adrianliechti.bridge.savedState",
    "~/Library/Saved Application State/com.wails.Bridge.savedState",
    "~/Library/WebKit/com.adrianliechti.bridge",
    "~/Library/WebKit/com.wails.Bridge",
  ]
end
