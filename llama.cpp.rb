class LlamaCpp < Formula
  desc "LLM inference in C/C++"
  
  homepage "https://github.com/ggerganov/llama.cpp"
  license "MIT"

  version "b2797"

  url "https://github.com/ggerganov/llama.cpp.git",
    tag:      "b2797"

  depends_on :macos

  def install
    system "make", "LLAMA_CURL=1", "LLAMA_METAL=1", "LLAMA_METAL_EMBED_LIBRARY=1"
    bin.install "main" => "llama-cpp"
    bin.install "server" => "llama-server"
  end

  test do
    system "#{bin}/llama-cli", "--version"
  end
end