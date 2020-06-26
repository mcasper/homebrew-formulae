class GitClean < Formula
  desc "Command-line tool for cleaning up local git branches."
  homepage "https://github.com/mcasper/git-clean"
  url "https://github.com/mcasper/git-clean/archive/0.5.3.tar.gz"
  sha256 "7323f837a0884053f4f885dfd24d0172aa3a105a6a1e610d920b880ecc6da7b1"
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
