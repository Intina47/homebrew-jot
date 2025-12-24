class Jot < Formula
  desc "Terminal-first notebook for nonsense"
  homepage "https://github.com/Intina47/jot"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Intina47/jot/releases/download/v1.0.0/jot_v1.0.0_darwin_arm64.tar.gz"
      sha256 "eb108964e3aaef795a99fb29fd4defba01960bf37e7074ba5e6c0152928c3f68"
    else
      url "https://github.com/Intina47/jot/releases/download/v1.0.0/jot_v1.0.0_darwin_amd64.tar.gz"
      sha256 "504b73984262ea42162f4a151ac3297795fdeff4a945408333180541a7af33fc"
    end
  end

  on_linux do
    url "https://github.com/Intina47/jot/releases/download/v1.0.0/jot_v1.0.0_linux_amd64.tar.gz"
    sha256 "c8713e630d646ef2b730c679d4db78a2c2c8eb1676a4bd0a8cc67faabaacb5453"
  end

  def install
    bin.install "jot"
  end
end
