class MistralRs < Formula
  desc "Blazingly fast LLM inference"

  homepage ""
  license "MIT"

  version "0.2.4"

  url "https://github.com/EricLBuehler/mistral.rs/releases/download/v0.2.4/source.tar.gz"
  sha256 "f69b6d75ad9d7d54a84a779f8fbcca70a1a61acbc530f3909efbd5111db39e33"
  
  depends_on :macos
  depends_on "rust" => :build

  def install
    ENV.prepend_path "PATH", HOMEBREW_CACHE/"cargo_cache/bin"
    system "cargo", "build", "--release", "--features", "metal"
    bin.install "target/release/mistralrs-server"
  end

  test do
    system "#{bin}/mistralrs-server", "--version"
  end
end
