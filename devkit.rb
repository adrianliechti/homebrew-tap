# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Devkit < Formula
  desc ""
  homepage ""
  version "0.2.2"

  on_macos do
    on_intel do
      url "https://github.com/adrianliechti/devkit/releases/download/v0.2.2/devkit_0.2.2_darwin_amd64.tar.gz"
      sha256 "c1182f0d76b6ebb563f784043bb85c80969e86b9842f92d31cf886959c21ed90"

      def install
        bin.install "devkit"
      end
    end
    on_arm do
      url "https://github.com/adrianliechti/devkit/releases/download/v0.2.2/devkit_0.2.2_darwin_arm64.tar.gz"
      sha256 "4e16fb959a5b203ebf5f5e5dae306373ee1b8cd99630d33025c072430d6cc4f6"

      def install
        bin.install "devkit"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/adrianliechti/devkit/releases/download/v0.2.2/devkit_0.2.2_linux_amd64.tar.gz"
        sha256 "ee3381ef6884472deb72938616338108fc9123381af20f25a0b0cb91aa161178"

        def install
          bin.install "devkit"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/adrianliechti/devkit/releases/download/v0.2.2/devkit_0.2.2_linux_arm64.tar.gz"
        sha256 "6d289c842993fa3679a4fd9f3e65670959c66cfe48f140d8e3779022c7cefbb1"

        def install
          bin.install "devkit"
        end
      end
    end
  end
end
