class MistralRs < Formula
  desc "Blazingly fast LLM inference"

  homepage "https://github.com/EricLBuehler/mistral.rs"
  license "MIT"

  version "0.3.4"

  url "https://github.com/EricLBuehler/mistral.rs/archive/refs/tags/v0.3.4.tar.gz"
  sha256 "b715ecd3986c0685ed3e144100f34ca19fd387d798764131c5cf96d0bba17377"
  
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
