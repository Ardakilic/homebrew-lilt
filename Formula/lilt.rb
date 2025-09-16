class Lilt < Formula
  desc "A CLI tool for transcoding HiFi music files to 16bit variations"
  homepage "https://github.com/Ardakilic/lilt"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Ardakilic/lilt/releases/download/v3.1.0/lilt-darwin-arm64.tar.gz"
      sha256 "dedb15d950da0a943d2fa116c04292a2dd80f5deeda22e1a4a8a5cee179d8002"
    else
      url "https://github.com/Ardakilic/lilt/releases/download/v3.1.0/lilt-darwin-amd64.tar.gz"
      sha256 "09c8d1124c807d9a2eeae3741255c82b61ba9a32f7082473af8cedf7f50216b9"
    end
  end

  def install
    bin.install "lilt"
  end

  test do
    system "#{bin}/lilt", "--version"
  end
end