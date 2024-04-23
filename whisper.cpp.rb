class WhisperCpp < Formula
  desc "Port of OpenAI's Whisper model in C/C++"

  homepage "https://github.com/ggerganov/whisper.cpp"
  license "MIT"

  version "v1.5.5"

  url "https://github.com/ggerganov/whisper.cpp.git",
    tag:      "v1.5.5",
    revision: "7395c70a748753e3800b63e3422a2b558a097c80"
  
  depends_on :macos

  def install
    system "make", "WHISPER_METAL=1", "WHISPER_METAL_EMBED_LIBRARY=1"
    bin.install "main" => "whisper-cpp"
    bin.install "server" => "whisper-server"
    bin.install "ggml-metal.h"
    bin.install "ggml-metal.metal"
  end

  test do
    system "#{bin}/whisper-cli", "--help"
  end
end