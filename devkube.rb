# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Devkube < Formula
  desc ""
  homepage ""
  version "0.21.0"

  on_macos do
    on_intel do
      url "https://github.com/adrianliechti/devkube/releases/download/v0.21.0/devkube_0.21.0_darwin_amd64.tar.gz"
      sha256 "4f3b34b1744c539add1c6c403ad27d84a687a9ca6a54081d8461ab1c2dfcc612"

      def install
        bin.install "devkube"
      end
    end
    on_arm do
      url "https://github.com/adrianliechti/devkube/releases/download/v0.21.0/devkube_0.21.0_darwin_arm64.tar.gz"
      sha256 "c990f1025ec1ba2db7736c0d7e76e6ae85db601c81af6149278fd53983d1946f"

      def install
        bin.install "devkube"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/adrianliechti/devkube/releases/download/v0.21.0/devkube_0.21.0_linux_amd64.tar.gz"
        sha256 "061409827727c850a6601248ec87ffe5dbf4f31af0db8fd3892d280a88756592"

        def install
          bin.install "devkube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/adrianliechti/devkube/releases/download/v0.21.0/devkube_0.21.0_linux_arm64.tar.gz"
        sha256 "0c724793779fdd8899a0eb9ab88b40521c2697bc4061dc7a73ecd89f7f5e5ffd"

        def install
          bin.install "devkube"
        end
      end
    end
  end
end
