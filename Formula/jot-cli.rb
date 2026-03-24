class JotCli < Formula
  desc "Terminal-first notebook and local document viewer"
  homepage "https://github.com/Intina47/jot"
  version "1.6.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Intina47/jot/releases/download/v1.6.1/jot_v1.6.1_darwin_arm64.tar.gz"
      sha256 "adef89a3fe6b71c8847aa9f7d030423fc7b517eacefa4843522bd4f9f3d227c8"
    else
      url "https://github.com/Intina47/jot/releases/download/v1.6.1/jot_v1.6.1_darwin_amd64.tar.gz"
      sha256 "42b4fea0f2fc938bc4a819799458dcfaa9094a5143435e781d7ba74ed28ab08f"
    end
  end

  on_linux do
    url "https://github.com/Intina47/jot/releases/download/v1.6.1/jot_v1.6.1_linux_amd64.tar.gz"
    sha256 "544a267ce389a449e5e1bffba2a7be3da95c04937eb913155bd0951b330f1693"
  end

  def install
    bin.install "jot"
  end

  test do
    assert_match "jot #{version}", shell_output("#{bin}/jot help")
  end
end
