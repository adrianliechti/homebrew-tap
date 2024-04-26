class LlamaCpp < Formula
  desc "LLM inference in C/C++"
  
  homepage "https://github.com/ggerganov/llama.cpp"
  license "MIT"

  version "b2740"

  url "https://github.com/ggerganov/llama.cpp.git",
    tag:      "b2740",
    revision: "d4a9afc1009f0da88d04b2c5f672d81d5ae94675"

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