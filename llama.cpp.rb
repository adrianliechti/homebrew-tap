class LlamaCpp < Formula
  desc "LLM inference in C/C++"
  
  homepage "https://github.com/ggerganov/llama.cpp"
  license "MIT"

  version "b2715"

  url "https://github.com/ggerganov/llama.cpp.git",
    tag:      "b2715",
    revision: "192090bae47960f0d38d4967abe398a5d190057e"

  depends_on :macos

  def install
    system "make", "LLAMA_CURL=1", "LLAMA_METAL=1", "LLAMA_METAL_EMBED_LIBRARY=1"
    bin.install "main" => "llama-cpp"
    bin.install "server" => "llama-server"
    bin.install "ggml-metal.h"
    bin.install "ggml-metal.metal"
  end

  test do
    system "#{bin}/llama-cli", "--version"
  end
end