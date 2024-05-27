class LlamaCpp < Formula
  desc "LLM inference in C/C++"
  
  homepage "https://github.com/ggerganov/llama.cpp"
  license "MIT"

  version "b3012"

  url "https://github.com/ggerganov/llama.cpp.git",
    tag:      "b3012"

  depends_on :macos

  def install
    system "make", "LLAMA_CURL=1", "LLAMA_METAL=1", "LLAMA_METAL_EMBED_LIBRARY=1", "main"
    system "make", "LLAMA_CURL=1", "LLAMA_METAL=1", "LLAMA_METAL_EMBED_LIBRARY=1", "server"
    bin.install "main" => "llama-cli"
    bin.install "server" => "llama-server"
  end

  test do
    system "#{bin}/llama-cli", "--version"
  end
end