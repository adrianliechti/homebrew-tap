# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Loop < Formula
  desc ""
  homepage ""
  version "0.14.1"

  depends_on "kubernetes-cli"
  depends_on "sshuttle"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adrianliechti/loop/releases/download/v0.14.1/loop_0.14.1_darwin_arm64.tar.gz"
      sha256 "f2db5baa49f0d2ad5398f457de6dd9bcf1a19468660ba042ca971e3b91ebd7b4"

      def install
        bin.install "loop"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/adrianliechti/loop/releases/download/v0.14.1/loop_0.14.1_darwin_amd64.tar.gz"
      sha256 "c253a82e297e03cb9b3e06ba167f65fd3173f8b7321a90a6d6dc1f1b394c3e66"

      def install
        bin.install "loop"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/adrianliechti/loop/releases/download/v0.14.1/loop_0.14.1_linux_arm64.tar.gz"
      sha256 "8e48b2fe5e178348d8d540805701e23cd2b76075481988925a3aea3654606ce8"

      def install
        bin.install "loop"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/adrianliechti/loop/releases/download/v0.14.1/loop_0.14.1_linux_amd64.tar.gz"
      sha256 "88e04ece01a354b250abc21e9abdbaaecd61726048ae7af5b305223f7eb2f25b"

      def install
        bin.install "loop"
      end
    end
  end
end
