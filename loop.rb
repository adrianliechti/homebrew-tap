# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Loop < Formula
  desc ""
  homepage ""
  version "0.1.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/adrianliechti/loop/releases/download/v0.1.0/loop_0.1.0_darwin_amd64.tar.gz"
      sha256 "481338911bedf7e0cde361677811e2fd981e13566e157b05e2af463f83b8ae68"
    end
    if Hardware::CPU.arm?
      url "https://github.com/adrianliechti/loop/releases/download/v0.1.0/loop_0.1.0_darwin_arm64.tar.gz"
      sha256 "8d02b4996c2f50ba9ddc9442b121126ff73de5b447cf8cee05e80cf3146046dd"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/adrianliechti/loop/releases/download/v0.1.0/loop_0.1.0_linux_amd64.tar.gz"
      sha256 "ebbe85fe2acea7256bfd4483c41801690212a0858aa5b26332bffdec2a6e7cc4"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/adrianliechti/loop/releases/download/v0.1.0/loop_0.1.0_linux_arm64.tar.gz"
      sha256 "dbe3feb07e97dd0dc6ee4a5bd179ce4ea3c6a6162481fe12bc4e1c09c74aa00d"
    end
  end

  depends_on "kubernetes-cli"
  depends_on "sshuttle"

  def install
    bin.install "loop"
  end
end
