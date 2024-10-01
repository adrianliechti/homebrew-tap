class MistralRs < Formula
  desc "Blazingly fast LLM inference"

  homepage "https://github.com/EricLBuehler/mistral.rs"
  license "MIT"

  version "0.3.1"

  url "https://github.com/EricLBuehler/mistral.rs/archive/refs/tags/v0.3.1.tar.gz"
  sha256 "61af829fd474e666fac50a80d08df02f0bec9eca4cc992902f2df62932fe6716"
  
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
