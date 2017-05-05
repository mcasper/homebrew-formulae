class GitClean < Formula
  desc "Command-line tool for cleaning up local git branches."
  homepage "https://github.com/mcasper/git-clean"
  url "https://github.com/mcasper/git-clean/archive/0.5.1.tar.gz"
  sha256 "d68ca8c3b71ad78556b7b43e1cf8ea50a2df376f7e7e5780388c6de5ee70ee59"
  head "https://github.com/mcasper/git-clean.git"

  depends_on "rust" => :build

  def install
    system("cargo", "build", "--release")
    bin.install "target/release/git-clean"
  end

  test do
    system "#{bin}/git-clean", "-h"
  end
end
