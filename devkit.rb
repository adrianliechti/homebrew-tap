# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Devkit < Formula
  desc ""
  homepage ""
  version "0.1.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adrianliechti/devkit/releases/download/v0.1.3/devkit_0.1.3_darwin_arm64.tar.gz"
      sha256 "60a4df2c0f24406a9fc9ab924ee6c9d69d754d76a62db76c9c73235ecb369931"

      def install
        bin.install "devkit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/adrianliechti/devkit/releases/download/v0.1.3/devkit_0.1.3_darwin_amd64.tar.gz"
      sha256 "72b832572ec52af7de79566dd415cbc01525d4cacdb3e48086ebcbb10c878368"

      def install
        bin.install "devkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/adrianliechti/devkit/releases/download/v0.1.3/devkit_0.1.3_linux_arm64.tar.gz"
      sha256 "decf47fa9f6423eec1f47f30030716a7beb5a2e906d7bc06400fceba34bf4a83"

      def install
        bin.install "devkit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/adrianliechti/devkit/releases/download/v0.1.3/devkit_0.1.3_linux_amd64.tar.gz"
      sha256 "d8dfc70e93fbd4529d07b90e2cbb085e7d7834f078573c417145bf485368d5a7"

      def install
        bin.install "devkit"
      end
    end
  end
end
