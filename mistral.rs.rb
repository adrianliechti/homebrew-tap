class MistralRs < Formula
  desc "Blazingly fast LLM inference"

  homepage "https://github.com/EricLBuehler/mistral.rs"
  license "MIT"

  version "0.3.0"

  url "https://github.com/EricLBuehler/mistral.rs/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "e252fc70c3427ff1cc806d6fc189a5e5d2bffdcc3c2c3a4c207df3107714c5e3"
  
  depends_on :macos
  depends_on "rust" => :build

  def install
    ENV.prepend_path "PATH", HOMEBREW_CACHE/"cargo_cache/bin"
    system "cargo", "build", "--release", "--features", "metal", "--package", "mistralrs-server"
    bin.install "target/release/mistralrs-server"
  end

  test do
    system "#{bin}/mistralrs-server", "--version"
  end
end
