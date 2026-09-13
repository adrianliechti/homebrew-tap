cask "prism-app" do
  version "0.1.4"
  sha256 "fb72db8ca85d75ca53ff6bf9f043f6c87f792cf284a17dda70576804bb69c866"

  url "https://github.com/adrianliechti/prism/releases/download/v#{version}/prism-app_#{version}_macOS_arm64.zip"
  name "Prism"
  desc "Insomnia/Postman-like API client desktop app"
  homepage "https://github.com/adrianliechti/prism"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :monterey

  app "Prism.app"

  # The app is not code-signed / notarized, so macOS quarantines the download
  # and refuses to open it. Strip the quarantine attribute on install.
  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/Prism.app"]
  end

  uninstall quit: ["com.adrianliechti.prism", "com.wails.Prism"]

  zap trash: [
    "~/Library/Caches/com.adrianliechti.prism",
    "~/Library/Caches/com.wails.Prism",
    "~/Library/HTTPStorages/com.adrianliechti.prism",
    "~/Library/HTTPStorages/com.wails.Prism",
    "~/Library/Saved Application State/com.adrianliechti.prism.savedState",
    "~/Library/Saved Application State/com.wails.Prism.savedState",
    "~/Library/WebKit/com.adrianliechti.prism",
    "~/Library/WebKit/com.wails.Prism",
  ]
end
