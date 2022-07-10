# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Loop < Formula
  desc ""
  homepage ""
  version "0.12.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adrianliechti/loop/releases/download/v0.12.1/loop_0.12.1_darwin_arm64.tar.gz"
      sha256 "c929bf704aca251b24f2d2cb67f8b29788765d718653a055056d38831ab8a354"

      def install
        bin.install "loop"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/adrianliechti/loop/releases/download/v0.12.1/loop_0.12.1_darwin_amd64.tar.gz"
      sha256 "d86b1c5a5534e0c72569ce970f75e1165d176423664b57d136bf50c527580e9e"

      def install
        bin.install "loop"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/adrianliechti/loop/releases/download/v0.12.1/loop_0.12.1_linux_arm64.tar.gz"
      sha256 "448b16bf013d5d58d95584c8b6b3a9addb009c3396eb7132db0bd0d879de78d2"

      def install
        bin.install "loop"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/adrianliechti/loop/releases/download/v0.12.1/loop_0.12.1_linux_amd64.tar.gz"
      sha256 "bc1f3f992f74fe8cde3f5010054ca6d40ecd4d611eb73d7e0d7589685ed374b7"

      def install
        bin.install "loop"
      end
    end
  end

  depends_on "kubernetes-cli"
  depends_on "sshuttle"
end
