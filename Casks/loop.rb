cask "loop" do
  version "0.30.4"

  on_macos do
    on_arm do
      sha256 "1d220fa9906bddeea5623620315cf3133022228043b57dcb0356a3db04edad72"
      url "https://github.com/adrianliechti/loop/releases/download/v#{version}/loop_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "1e5e3306479bc071daee60396118ea0e3a7b80fe052199aa8dae5d50a569bde5"
      url "https://github.com/adrianliechti/loop/releases/download/v#{version}/loop_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "8ad476c23743a49653a6c61d8143c1125359688f44edce9b613d359629d9479f"
      url "https://github.com/adrianliechti/loop/releases/download/v#{version}/loop_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "020d4362853db9a06ef6a1c0a79da855d124de71d66b78b76eb365f1556ea0b3"
      url "https://github.com/adrianliechti/loop/releases/download/v#{version}/loop_#{version}_linux_amd64.tar.gz"
    end
  end

  name "loop"
  desc "Build, run and connect applications for Kubernetes development"
  homepage "https://github.com/adrianliechti/loop"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "loop"

  postflight_steps do
    on_macos do
      run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/loop"]
    end
  end

  # No zap stanza required
end
