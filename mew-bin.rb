class MewBin < Formula
  desc "Binary of Messaging in the Emacs World"
  homepage "https://www.mew.org/"
  url "https://github.com/kazu-yamamoto/Mew/archive/refs/tags/v6.11.tar.gz"
  sha256 "c3930611bd36683bc6f52d769bd0f441e496b2d826a324c4886293913ea0afa8"
  license "BSD-3-Clause"

  def install
    Dir.chdir("bin") do
      system "./configure", "--disable-silent-rules", *std_configure_args
      system "make", "install"
    end
  end
end
