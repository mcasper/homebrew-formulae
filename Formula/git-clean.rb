class GitClean < Formula
  desc "Command-line tool for cleaning up local git branches."
  homepage "https://github.com/mcasper/git-clean"
  url "https://github.com/mcasper/git-clean/archive/0.4.4.tar.gz"
  sha256 "39404bbc325c59ff1d7265e91cec7c750fec60df7f8c2c410709f312ff564176"
  head "https://github.com/mcasper/git-clean.git"

  depends_on "rust" => :build

  def install
    system("cargo", "install", "git-clean", "--force")
  end

  test do
    system "#{bin}/git-clean", "-h"
  end
end
