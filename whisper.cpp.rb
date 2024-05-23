class WhisperCpp < Formula
  desc "Port of OpenAI's Whisper model in C/C++"

  homepage "https://github.com/ggerganov/whisper.cpp"
  license "MIT"

  version "v1.6.1"

  url "https://github.com/ggerganov/whisper.cpp.git",
    tag:      "v1.6.1"
  
  depends_on :macos

  def install
    system "make", "WHISPER_METAL=1", "WHISPER_METAL_EMBED_LIBRARY=1", "main"
    system "make", "WHISPER_METAL=1", "WHISPER_METAL_EMBED_LIBRARY=1", "server"
    bin.install "main" => "whisper-cli"
    bin.install "server" => "whisper-server"
  end

  test do
    system "#{bin}/whisper-cli", "--help"
  end
end