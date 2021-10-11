# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Loop < Formula
  desc ""
  homepage ""
  version "0.6.0"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adrianliechti/loop/releases/download/v0.6.0/loop_0.6.0_darwin_arm64.tar.gz"
      sha256 "7c1404e7154b4e6ef380f064641a8c64a29fb6ec718895c781ca94c9d9f22bba"
    end
    if Hardware::CPU.intel?
      url "https://github.com/adrianliechti/loop/releases/download/v0.6.0/loop_0.6.0_darwin_amd64.tar.gz"
      sha256 "41d88ff6ade2f168cf80fb663d59ccfa9bf2c85fa685a5d2ac448aa5f2f11847"
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/adrianliechti/loop/releases/download/v0.6.0/loop_0.6.0_linux_arm64.tar.gz"
      sha256 "a2939aff04e64b9685f2ec5ab105514e50e9969502f69b9158fad280db3b7df2"
    end
    if Hardware::CPU.intel?
      url "https://github.com/adrianliechti/loop/releases/download/v0.6.0/loop_0.6.0_linux_amd64.tar.gz"
      sha256 "e77447d053b75c53224472ef937acc769c42cc28b6d2fcdbf9221471133a0f1e"
    end
  end

  depends_on "kubernetes-cli"
  depends_on "sshuttle"

  def install
    bin.install "loop"
  end
end
