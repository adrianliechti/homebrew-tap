cask "donkey" do
  version "0.5.5"

  on_macos do
    on_arm do
      sha256 "94451822028b94353a0c71bf5bff3b67c768e5709f6a95de950b17daee89c218"
      url "https://github.com/adrianliechti/donkey/releases/download/v#{version}/donkey_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "1de019a383beb24007200fddef41f092f01c118ade417a877b3df4f8e9c18c53"
      url "https://github.com/adrianliechti/donkey/releases/download/v#{version}/donkey_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "58b56ab438e27940a734e1b45e379e9915da2e4d5f86e35e200f2a70fdf7be76"
      url "https://github.com/adrianliechti/donkey/releases/download/v#{version}/donkey_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "d9ad43a8b4b5e8cedf97bb1d133772fa6c5a3310dcb2b231690b9b66e90d82f1"
      url "https://github.com/adrianliechti/donkey/releases/download/v#{version}/donkey_linux_amd64.tar.gz"
    end
  end

  name "donkey"
  desc "Deploy applications to Kubernetes"
  homepage "https://github.com/adrianliechti/donkey"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "donkey"

  postflight_steps do
    on_macos do
      run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/donkey"]
    end
  end

  # No zap stanza required
end
