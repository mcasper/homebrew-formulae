class GitClean < Formula
  desc "Command-line tool for cleaning up local git branches."
  homepage "https://github.com/mcasper/git-clean"
  url "https://github.com/mcasper/git-clean/archive/0.5.1.tar.gz"
  sha256 "001c582cec41119e5bfcfc860fa163ea444ee4bafc9cbbbb9ca68cc414908f58"
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
