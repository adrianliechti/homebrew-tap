cask "bridge-app" do
  version "0.2.0"
  sha256 "38cc94efaf1f442ebfe51bc3d8890d576625a65d4cfe54a1c84f8b2406e7085d"

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

  uninstall quit: "com.wails.Bridge"

  zap trash: [
    "~/Library/Caches/com.wails.Bridge",
    "~/Library/HTTPStorages/com.wails.Bridge",
    "~/Library/Saved Application State/com.wails.Bridge.savedState",
    "~/Library/WebKit/com.wails.Bridge",
  ]
end
