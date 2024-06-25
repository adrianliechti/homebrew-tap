# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Loop < Formula
  desc ""
  homepage ""
  version "0.15.8"

  depends_on "kubernetes-cli"

  on_macos do
    on_intel do
      url "https://github.com/adrianliechti/loop/releases/download/v0.15.8/loop_0.15.8_darwin_amd64.tar.gz"
      sha256 "ec878f0ea00f480b9629c4c186ed083b643e06a44117d4d29e6cdeda9d9c3ccf"

      def install
        bin.install "loop"
      end
    end
    on_arm do
      url "https://github.com/adrianliechti/loop/releases/download/v0.15.8/loop_0.15.8_darwin_arm64.tar.gz"
      sha256 "34c907d19bb28afff5a5d621b5155af2ab58f9fcb9a1a926569177075196e234"

      def install
        bin.install "loop"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/adrianliechti/loop/releases/download/v0.15.8/loop_0.15.8_linux_amd64.tar.gz"
        sha256 "cbac66de3e7d314500066036975436d723cdd7c25b1132e8b598f72c1da4dd1d"

        def install
          bin.install "loop"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/adrianliechti/loop/releases/download/v0.15.8/loop_0.15.8_linux_arm64.tar.gz"
        sha256 "7f6e41d4b5e4b4ac3f4d3c7c58d901aa5b35a37a219830bf9e6823061dc96c7a"

        def install
          bin.install "loop"
        end
      end
    end
  end
end
