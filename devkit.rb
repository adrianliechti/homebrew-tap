# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Devkit < Formula
  desc ""
  homepage ""
  version "0.1.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adrianliechti/devkit/releases/download/v0.1.1/devkit_0.1.1_darwin_arm64.tar.gz"
      sha256 "79f77d7f436b98d6a68bcc68a41971d987de64d8df72c019cb3ef7456f27ef59"

      def install
        bin.install "devkit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/adrianliechti/devkit/releases/download/v0.1.1/devkit_0.1.1_darwin_amd64.tar.gz"
      sha256 "c86f97e9c99f983705ee9e21f91bf43b9d4fbb44f3243c1514cc924a91577ae6"

      def install
        bin.install "devkit"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/adrianliechti/devkit/releases/download/v0.1.1/devkit_0.1.1_linux_arm64.tar.gz"
      sha256 "d47e683865d1becf35c1145dd4eea813c4e0a13c554d17d73cd18de705797787"

      def install
        bin.install "devkit"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/adrianliechti/devkit/releases/download/v0.1.1/devkit_0.1.1_linux_amd64.tar.gz"
      sha256 "8d64b75c008d9bc48bbebbc1b1faa64bde3f7b951142ecbc63b5fd9f5e7dd4e7"

      def install
        bin.install "devkit"
      end
    end
  end
end
