cask "devkit" do
  version "0.4.1"

  on_macos do
    on_arm do
      sha256 "b7dfebbe8aa8d2bb71eb2bca72d49331f1e309406ee02726753d3770b8565467"
      url "https://github.com/adrianliechti/devkit/releases/download/v#{version}/devkit_#{version}_darwin_arm64.tar.gz"
    end
    on_intel do
      sha256 "1fecf04cd01d25b95cd4938c50b29034b27cec829803a3e421ae3deccf0c628d"
      url "https://github.com/adrianliechti/devkit/releases/download/v#{version}/devkit_#{version}_darwin_amd64.tar.gz"
    end
  end
  on_linux do
    on_arm do
      sha256 "fe193928f3746053832f841060ecdc66de20579d52f99726b69b41e2124376be"
      url "https://github.com/adrianliechti/devkit/releases/download/v#{version}/devkit_#{version}_linux_arm64.tar.gz"
    end
    on_intel do
      sha256 "950081885f564d57b1b6b46cd67e2f5bc52197a909467f7901abeda87f971537"
      url "https://github.com/adrianliechti/devkit/releases/download/v#{version}/devkit_#{version}_linux_amd64.tar.gz"
    end
  end

  name "devkit"
  desc "Application templates and local development services"
  homepage "https://github.com/adrianliechti/devkit"

  livecheck do
    skip "Auto-generated on release."
  end

  binary "devkit"

  postflight_steps do
    on_macos do
      run "/usr/bin/xattr", args: ["-dr", "com.apple.quarantine", "{{staged_path}}/devkit"]
    end
  end

  # No zap stanza required
end
