$version = "b2715"

class LlamaCpp < Formula
  desc "LLM inference in C/C++"
  homepage "https://github.com/ggerganov/llama.cpp"
  version "#{$version}"
  license "MIT"

  depends_on :macos
  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/ggerganov/llama.cpp/releases/download/#{$version}/llama-#{$version}-bin-macos-x64.zip"
    else
      url "https://github.com/ggerganov/llama.cpp/releases/download/#{$version}/llama-#{$version}-bin-macos-arm64.zip"
    end
  end

  def install
    bin.install "bin/main" => "llama-cli"
    bin.install "bin/server" => "llama-server"
  end

  test do
    system "#{bin}/llama-cli", "--version"
  end
end