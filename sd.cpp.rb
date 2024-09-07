class SdCpp < Formula
  desc "Stable Diffusion and Flux in pure C/C++"
  
  homepage "https://github.com/leejet/stable-diffusion.cpp"
  license "MIT"

  version "e410aeb"

  url "https://github.com/leejet/stable-diffusion.cpp", tag: "master-e410aeb", using: :git

  depends_on :macos
  depends_on "cmake" => :build
  depends_on "ccache" => :build

  def install
    system "cmake", ".", "-DSD_METAL=ON"
    system "cmake", "--build", ".", "--config", "Release"
    bin.install "bin/sd" => "sd-cli"
  end

  test do
    system "#{bin}/sd-cli", "--help"
  end
end
