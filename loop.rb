# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Loop < Formula
  desc ""
  homepage ""
  version "0.15.2"

  depends_on "kubernetes-cli"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adrianliechti/loop/releases/download/v0.15.2/loop_0.15.2_darwin_arm64.tar.gz"
      sha256 "88c1111422ede160009b7f5ac27430a856dfaff06338589f10d943667d2c6c2c"

      def install
        bin.install "loop"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/adrianliechti/loop/releases/download/v0.15.2/loop_0.15.2_darwin_amd64.tar.gz"
      sha256 "62889a3800a33a194110978759801874dcaea4d201775f4de51eead65ca5186c"

      def install
        bin.install "loop"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/adrianliechti/loop/releases/download/v0.15.2/loop_0.15.2_linux_arm64.tar.gz"
      sha256 "dfbf6f2c3ea4618de53f559d1a178a1f8d8c19d3aea514ed207d1103ffe288a1"

      def install
        bin.install "loop"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/adrianliechti/loop/releases/download/v0.15.2/loop_0.15.2_linux_amd64.tar.gz"
      sha256 "71c80162062a2eb6dbc6381984843c1f820b455fc83dae91f8e14821e1d3f2b7"

      def install
        bin.install "loop"
      end
    end
  end
end
