# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Loop < Formula
  desc ""
  homepage ""
  version "0.11.3"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/adrianliechti/loop/releases/download/v0.11.3/loop_0.11.3_darwin_arm64.tar.gz"
      sha256 "30e263f5a25d6e24a17363b725401e356ba902c6700fdd5ab2364eca80b88299"

      def install
        bin.install "loop"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/adrianliechti/loop/releases/download/v0.11.3/loop_0.11.3_darwin_amd64.tar.gz"
      sha256 "f98bc8cc1b82156645bd4c5cb21f6aba45e875bfd616e94ae45ffaf75808f9e2"

      def install
        bin.install "loop"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/adrianliechti/loop/releases/download/v0.11.3/loop_0.11.3_linux_arm64.tar.gz"
      sha256 "276667b90cf2be0312674b441cd58d624033a653e636732f3c22a27176cde8a4"

      def install
        bin.install "loop"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/adrianliechti/loop/releases/download/v0.11.3/loop_0.11.3_linux_amd64.tar.gz"
      sha256 "bf4e695f6b677665d761f9cd1d22a19f8ff3a02cb3ef5e50df86eadddcb121f5"

      def install
        bin.install "loop"
      end
    end
  end

  depends_on "kubernetes-cli"
  depends_on "sshuttle"
end
