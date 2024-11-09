class LlamaCpp < Formula
  desc "LLM inference in C/C++"
  
  homepage "https://github.com/ggerganov/llama.cpp"
  license "MIT"

  version "b4061"

  url "https://github.com/ggerganov/llama.cpp.git", tag: "b4061"

  depends_on :macos

  def install
    system "make", "LLAMA_CURL=1", "GGML_METAL=1", "GGML_METAL_EMBED_LIBRARY=1", "llama-cli"
    system "make", "LLAMA_CURL=1", "GGML_METAL=1", "GGML_METAL_EMBED_LIBRARY=1", "llama-server"
    bin.install "llama-cli"
    bin.install "llama-server"
  end

  test do
    system "#{bin}/llama-cli", "--version"
  end
end
