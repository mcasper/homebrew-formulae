class GitClean < Formula
  desc "A command line tool for cleaning up local git branches."
  homepage "https://github.com/mcasper/git-clean"
  url "https://github.com/mcasper/git-clean/archive/0.4.4.tar.gz"
  version "0.4.4"
  sha256 ""
  head "https://github.com/mcasper/git-clean.git"

  depends_on "rust" => :build

  def install
    system("cargo", "install", "git-clean", "--force")
  end
end
