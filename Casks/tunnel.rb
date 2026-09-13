cask "tunnel" do
  version "0.0.2"

  on_macos do
    on_arm do
      sha256 "d56f8085aab04e33a9e3bc8cc4409c257fdd1e4cb135b605fed8e8e5f09c5293"
      url "https://github.com/adrianliechti/tunnel/releases/download/v#{version}/tunnel_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "5ce3b003afbb2b42227defc04c47bbfa682994b8876b49e205d045025b292774"
      url "https://github.com/adrianliechti/tunnel/releases/download/v#{version}/tunnel_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "e1ddbca9e80e20e1e6d3cbb9046aafd2974db27467eefdcec466905120864e2b"
      url "https://github.com/adrianliechti/tunnel/releases/download/v#{version}/tunnel_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "8db880016221dcffd9b2ff647b28d46920c41a9a294c4f83ce0d4d099f5d488c"
      url "https://github.com/adrianliechti/tunnel/releases/download/v#{version}/tunnel_#{version}_linux_amd64.tar.gz"
    end
  end

  name "tunnel"
  desc "Expose local web servers through public HTTP and HTTPS endpoints"
  homepage "https://github.com/adrianliechti/tunnel"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "tunnel"

  postflight_steps do
    on_macos do
      run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/tunnel"]
    end
  end

  # No zap stanza required
end
