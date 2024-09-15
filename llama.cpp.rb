class LlamaCpp < Formula
  desc "LLM inference in C/C++"
  
  homepage "https://github.com/ggerganov/llama.cpp"
  license "MIT"

  version "b3761"

  url "https://github.com/ggerganov/llama.cpp.git", tag: "b3761"

  depends_on :macos

  def install
    system "make", "LLAMA_CURL=1", "LLAMA_METAL=1", "LLAMA_METAL_EMBED_LIBRARY=1", "llama-cli"
    system "make", "LLAMA_CURL=1", "LLAMA_METAL=1", "LLAMA_METAL_EMBED_LIBRARY=1", "llama-server"
    bin.install "llama-cli"
    bin.install "llama-server"
  end

  test do
    system "#{bin}/llama-cli", "--version"
  end
end
