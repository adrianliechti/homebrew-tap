cask "granite-app" do
  version "0.1.4"
  sha256 "63fb82997d45d636d8090ff3cb8865ea3e81cec0fd87e1137e723184e79a6f63"

  url "https://github.com/adrianliechti/granite/releases/download/v#{version}/granite-app_#{version}_macOS_arm64.zip"
  name "Granite"
  desc "Database and object-storage browser desktop app"
  homepage "https://github.com/adrianliechti/granite"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Granite.app"

  # The app is not code-signed / notarized, so macOS quarantines the download
  # and refuses to open it. Strip the quarantine attribute on install.
  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/Granite.app"]
  end

  uninstall quit: ["com.adrianliechti.granite", "com.wails.Granite"]

  zap trash: [
    "~/Library/Caches/com.adrianliechti.granite",
    "~/Library/Caches/com.wails.Granite",
    "~/Library/HTTPStorages/com.adrianliechti.granite",
    "~/Library/HTTPStorages/com.wails.Granite",
    "~/Library/Saved Application State/com.adrianliechti.granite.savedState",
    "~/Library/Saved Application State/com.wails.Granite.savedState",
    "~/Library/WebKit/com.adrianliechti.granite",
    "~/Library/WebKit/com.wails.Granite",
  ]
end
