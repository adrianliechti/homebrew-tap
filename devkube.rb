# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Devkube < Formula
  desc ""
  homepage ""
  version "0.20.9"

  on_macos do
    on_intel do
      url "https://github.com/adrianliechti/devkube/releases/download/v0.20.9/devkube_0.20.9_darwin_amd64.tar.gz"
      sha256 "16b9a100d6a97a649ffc13e4c0e7bbb88e95f20971deaac8e7a4b9804947ec2c"

      def install
        bin.install "devkube"
      end
    end
    on_arm do
      url "https://github.com/adrianliechti/devkube/releases/download/v0.20.9/devkube_0.20.9_darwin_arm64.tar.gz"
      sha256 "4d7cbda41b10105ebbd22e95999a30581275aa5b1749e88a7984be1a23410933"

      def install
        bin.install "devkube"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/adrianliechti/devkube/releases/download/v0.20.9/devkube_0.20.9_linux_amd64.tar.gz"
        sha256 "5a804c98c5d839fef0bdf128a1c67d8fee29f1bd864d1bb61bf320cbc9e5aedf"

        def install
          bin.install "devkube"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/adrianliechti/devkube/releases/download/v0.20.9/devkube_0.20.9_linux_arm64.tar.gz"
        sha256 "701152df739b845757cb0cdd3e13d3cad5cc87024a4525059c299cfbd9d1630e"

        def install
          bin.install "devkube"
        end
      end
    end
  end
end
