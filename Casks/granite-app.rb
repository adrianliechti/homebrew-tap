cask "granite-app" do
  version "0.1.0"
  sha256 "fe275362d1d13cbd4ca8fbbca9dffd226db47d4a85d8da3ee658243548b4a8d1"

  url "https://github.com/adrianliechti/granite/releases/download/v#{version}/granite-app_#{version}_macOS_arm64.zip"
  name "Granite"
  desc "Database and object-storage browser desktop app"
  homepage "https://github.com/adrianliechti/granite"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "Granite.app"

  # The app is not code-signed / notarized, so macOS quarantines the download
  # and refuses to open it. Strip the quarantine attribute on install.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Granite.app"]
  end

  uninstall quit: "com.wails.Granite"

  zap trash: [
    "~/Library/Caches/com.wails.Granite",
    "~/Library/HTTPStorages/com.wails.Granite",
    "~/Library/Saved Application State/com.wails.Granite.savedState",
    "~/Library/WebKit/com.wails.Granite",
  ]
end
