# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Loop < Formula
  desc ""
  homepage ""
  version "0.18.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/adrianliechti/loop/releases/download/v0.18.1/loop_0.18.1_darwin_amd64.tar.gz"
      sha256 "5738d2974b716709ff8698d18331b6db1eec0a38d9dd47b763cb66e497713a4b"

      def install
        bin.install "loop"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/adrianliechti/loop/releases/download/v0.18.1/loop_0.18.1_darwin_arm64.tar.gz"
      sha256 "5c314417ace8e78b8f90995e9110c054a5d037a123ccfde15c497876430db88f"

      def install
        bin.install "loop"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/adrianliechti/loop/releases/download/v0.18.1/loop_0.18.1_linux_amd64.tar.gz"
        sha256 "c0c1b2e35bb1c7cb96a9494f7f704719dde81f24f5247760fd704f4895b34aef"

        def install
          bin.install "loop"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/adrianliechti/loop/releases/download/v0.18.1/loop_0.18.1_linux_arm64.tar.gz"
        sha256 "e95930bb0dc61b770c51f936ca9e6a76643284803af25490cfdf0e632019afd9"

        def install
          bin.install "loop"
        end
      end
    end
  end
end
