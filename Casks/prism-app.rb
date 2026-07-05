cask "prism-app" do
  version "0.1.1"
  sha256 "cc4e0e4d4a62bf820fe5d94aab8c8b2b6c2a3cd727861b3a3b92bd189f20a800"

  url "https://github.com/adrianliechti/prism/releases/download/v#{version}/prism-app_#{version}_macOS_arm64.zip"
  name "Prism"
  desc "Insomnia/Postman-like API client desktop app"
  homepage "https://github.com/adrianliechti/prism"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64

  app "Prism.app"

  # The app is not code-signed / notarized, so macOS quarantines the download
  # and refuses to open it. Strip the quarantine attribute on install.
  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Prism.app"]
  end

  uninstall quit: ["com.adrianliechti.prism", "com.wails.Prism"]

  zap trash: [
    "~/Library/Caches/com.adrianliechti.prism",
    "~/Library/HTTPStorages/com.adrianliechti.prism",
    "~/Library/Saved Application State/com.adrianliechti.prism.savedState",
    "~/Library/WebKit/com.adrianliechti.prism",
    "~/Library/Caches/com.wails.Prism",
    "~/Library/HTTPStorages/com.wails.Prism",
    "~/Library/Saved Application State/com.wails.Prism.savedState",
    "~/Library/WebKit/com.wails.Prism",
  ]
end
