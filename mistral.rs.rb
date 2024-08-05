class MistralRs < Formula
  desc ""
  homepage ""
  version "0.2.4"

  on_macos do
    on_intel do
      url "https://github.com/EricLBuehler/mistral.rs/releases/download/v0.2.4/mistralrs-server-x86_64-apple-darwin.tar.xz"
      sha256 "565311cb06cf1cb4c39bd41054006c6ebe15e99e0ea18a1ce5eda70e71365074"

      def install
        bin.install "mistralrs-server"
      end
    end

    on_arm do
      url "https://github.com/EricLBuehler/mistral.rs/releases/download/v0.2.4/mistralrs-server-aarch64-apple-darwin.tar.xz"
      sha256 "78bf7c2282901afa73922c8d7070868c3c625c97037f04e391c546739f2b6c36"

      def install
        bin.install "mistralrs-server"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/EricLBuehler/mistral.rs/releases/download/v0.2.4/mistralrs-server-x86_64-unknown-linux-gnu.tar.xz"
        sha256 "fd76e589ed24f94626066da99a848c276d6845bfcd6258a52f25cd5565d534a8"

        def install
          bin.install "loop"
        end
      end
    end
  end

  test do
    system "#{bin}/mistralrs-server", "--version"
  end
end
