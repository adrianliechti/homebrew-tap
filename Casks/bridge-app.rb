cask "bridge-app" do
  version "0.2.3"
  sha256 "c75c8b5fc074ac0a60367c74047292e526b301814de95291a6d461f3b7c87a13"

  url "https://github.com/adrianliechti/bridge/releases/download/v#{version}/bridge-app_#{version}_macOS_arm64.zip"
  name "Bridge"
  desc "Kubernetes and Docker dashboard desktop app"
  homepage "https://github.com/adrianliechti/bridge"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "Bridge.app"

  # The app is not code-signed / notarized, so macOS quarantines the download
  # and refuses to open it. Strip the quarantine attribute on install.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Bridge.app"]
  end

  uninstall quit: ["com.adrianliechti.bridge", "com.wails.Bridge"]

  zap trash: [
    "~/Library/Caches/com.adrianliechti.bridge",
    "~/Library/HTTPStorages/com.adrianliechti.bridge",
    "~/Library/Saved Application State/com.adrianliechti.bridge.savedState",
    "~/Library/WebKit/com.adrianliechti.bridge",
    "~/Library/Caches/com.wails.Bridge",
    "~/Library/HTTPStorages/com.wails.Bridge",
    "~/Library/Saved Application State/com.wails.Bridge.savedState",
    "~/Library/WebKit/com.wails.Bridge",
  ]
end
