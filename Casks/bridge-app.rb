cask "bridge-app" do
  version "0.2.4"
  sha256 "956812bf65b58324caa70e5f4f7dd57a2e0076ca79a8b612ff025a146c5901b5"

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
