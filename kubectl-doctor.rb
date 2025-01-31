# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class KubectlDoctor < Formula
  desc ""
  homepage ""
  version "0.0.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/adrianliechti/kubectl-doctor/releases/download/v0.0.1/kubectl-doctor_0.0.1_darwin_amd64.tar.gz"
      sha256 "539b54c80b14be66c92a9506952ef0159573eb59b939fdd9694202f22902d961"

      def install
        bin.install "kubectl-doctor"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/adrianliechti/kubectl-doctor/releases/download/v0.0.1/kubectl-doctor_0.0.1_darwin_arm64.tar.gz"
      sha256 "3e68122e532f213cd930c14d5fb0c3ced6d0da184d82add3817f1e71f9f7eaad"

      def install
        bin.install "kubectl-doctor"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/adrianliechti/kubectl-doctor/releases/download/v0.0.1/kubectl-doctor_0.0.1_linux_amd64.tar.gz"
        sha256 "6aabf83264373f178740bac3fda2d8bdeea56163511d0ca17072386ec8dc4e1e"

        def install
          bin.install "kubectl-doctor"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/adrianliechti/kubectl-doctor/releases/download/v0.0.1/kubectl-doctor_0.0.1_linux_arm64.tar.gz"
        sha256 "d814f4742012bca3488cdd0d68e0e4b5d3e9f7687874c0f7532ed2e2f3bb6eb1"

        def install
          bin.install "kubectl-doctor"
        end
      end
    end
  end
end
