class MistralRs < Formula
  desc "Blazingly fast LLM inference"

  homepage "https://github.com/EricLBuehler/mistral.rs"
  license "MIT"

  version "0.2.5"

  url "https://github.com/EricLBuehler/mistral.rs/releases/download/v0.2.5/source.tar.gz"
  sha256 "c759348b56fc1954ba3151542b162175e8ba50aa9db3d9c0a6b57f58ebb0e364"
  
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
