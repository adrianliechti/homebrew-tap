# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Devkube < Formula
  desc ""
  homepage ""
  version "0.23.2"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/adrianliechti/devkube/releases/download/v0.23.2/devkube_0.23.2_darwin_amd64.tar.gz"
      sha256 "a00a0773eb22aad92b07bbe5abeb6f77f84c167c73987e54d05b1ef2e952fb80"

      def install
        bin.install "devkube"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/adrianliechti/devkube/releases/download/v0.23.2/devkube_0.23.2_darwin_arm64.tar.gz"
      sha256 "ddd90f6bde398b0d6f43f0fe2b1aae3a2c79090643d27827a386a9f42c371712"

      def install
        bin.install "devkube"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/adrianliechti/devkube/releases/download/v0.23.2/devkube_0.23.2_linux_amd64.tar.gz"
        sha256 "037e05a98673fbf29701aa97de1b3f392987de1ec8de83ecfb9e39460bfcced8"

        def install
          bin.install "devkube"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/adrianliechti/devkube/releases/download/v0.23.2/devkube_0.23.2_linux_arm64.tar.gz"
        sha256 "1535ff066a6380b5d7272be56d3b48dece415cb908ec776e7a75c1f21b489830"

        def install
          bin.install "devkube"
        end
      end
    end
  end
end
