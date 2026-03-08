class MewBin < Formula
  desc "Binary of Messaging in the Emacs World"
  homepage "https://www.mew.org/"
  url "https://github.com/kazu-yamamoto/Mew/archive/refs/tags/v6.10.tar.gz"
  sha256 "39a273dcf6caad0659151b87710a961471f666e020d799d9a61421b6e83013ca"
  license "BSD-3-Clause"

  def install
    Dir.chdir("bin")
    system "./configure", "--disable-silent-rules", *std_configure_args
    system "make", "install"
  end
end
