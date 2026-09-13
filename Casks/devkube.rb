cask "devkube" do
  version "0.30.5"

  on_macos do
    on_arm do
      sha256 "c6816bbc53fc9d27d6ccac8ce46f07eae77cd0c7ecc80a8b5aeab74eecf63f74"
      url "https://github.com/adrianliechti/devkube/releases/download/v#{version}/devkube_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "4fb9c3770521decf5e22d1adf5e54840e1b08527e3b09518def115360e624cb0"
      url "https://github.com/adrianliechti/devkube/releases/download/v#{version}/devkube_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "9a9a06e073af6b29d7347ad49c41db82066249dc131fde76fd90a1d548c82fe6"
      url "https://github.com/adrianliechti/devkube/releases/download/v#{version}/devkube_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "307a425a6800eaad0728c4bf28ed4ee36c0e4531daf5a6f4976fd8d7e2d88074"
      url "https://github.com/adrianliechti/devkube/releases/download/v#{version}/devkube_#{version}_linux_amd64.tar.gz"
    end
  end

  name "devkube"
  desc "Create and manage local Kubernetes clusters"
  homepage "https://github.com/adrianliechti/devkube"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "devkube"

  postflight_steps do
    on_macos do
      run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/devkube"]
    end
  end

  # No zap stanza required
end
