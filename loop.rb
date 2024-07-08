# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Loop < Formula
  desc ""
  homepage ""
  version "0.16.8"

  depends_on "kubernetes-cli"

  on_macos do
    on_intel do
      url "https://github.com/adrianliechti/loop/releases/download/v0.16.8/loop_0.16.8_darwin_amd64.tar.gz"
      sha256 "688febb111d8e3a85b8db4afd167417c46de86f4a88127e45881ebc9ae33b78b"

      def install
        bin.install "loop"
      end
    end
    on_arm do
      url "https://github.com/adrianliechti/loop/releases/download/v0.16.8/loop_0.16.8_darwin_arm64.tar.gz"
      sha256 "a3344084786208d999fc220b93712f9ffd887ee8c93bae1694b2e6894e58c3fd"

      def install
        bin.install "loop"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/adrianliechti/loop/releases/download/v0.16.8/loop_0.16.8_linux_amd64.tar.gz"
        sha256 "43fd7fbf2b922d31c95663d2f13aa37b9e9751e65abf2bb1175575d52f51b4ef"

        def install
          bin.install "loop"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/adrianliechti/loop/releases/download/v0.16.8/loop_0.16.8_linux_arm64.tar.gz"
        sha256 "f922b6c96c6c7ae659480d76a3df6e42b8493bad8dbd20b9180d7e49ffdc9a06"

        def install
          bin.install "loop"
        end
      end
    end
  end
end
