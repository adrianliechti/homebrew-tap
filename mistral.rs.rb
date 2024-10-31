class MistralRs < Formula
  desc "Blazingly fast LLM inference"

  homepage "https://github.com/EricLBuehler/mistral.rs"
  license "MIT"

  version "0.3.2"

  url "https://github.com/EricLBuehler/mistral.rs/archive/refs/tags/v0.3.2.tar.gz"
  sha256 "59dc0f94a27866aec6def3cb77702209f3077e815d56c9ad6042b69ac476168a"
  
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
