cask "bridge-app" do
  version "0.2.1"
  sha256 "e6a6d93a51770d643078fda784b2f3896804a1a59b649c84430bcace3fb74f6b"

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
