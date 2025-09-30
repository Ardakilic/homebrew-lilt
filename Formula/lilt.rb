class Lilt < Formula
  desc "A CLI tool for transcoding HiFi music files to 16bit variations"
  homepage "https://github.com/Ardakilic/lilt"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Ardakilic/lilt/releases/download/v3.1.1/lilt-darwin-arm64.tar.gz"
      sha256 "e06afda4c56b3241749efe5ace3d60c49ce7068e14c14be0cb0acc77c63d55e9"
    else
      url "https://github.com/Ardakilic/lilt/releases/download/v3.1.1/lilt-darwin-amd64.tar.gz"
      sha256 "2c182d0f70bafd6dab49c5de3fced020f63382ffb41ffe82b5ca417a10fd7842"
    end
  end

  def install
    if Hardware::CPU.arm?
      bin.install "lilt-darwin-arm64" => "lilt"
    else
      bin.install "lilt-darwin-amd64" => "lilt"
    end
  end

  test do
    system "#{bin}/lilt", "--version"
  end
end
