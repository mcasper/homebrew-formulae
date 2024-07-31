class GitClean < Formula
  desc "Command-line tool for cleaning up local git branches."
  homepage "https://github.com/mcasper/git-clean"
  url "https://github.com/mcasper/git-clean/archive/0.8.0.tar.gz"
  sha256 "eb8c0fbaaef8233fb6d20e765182212b0b1e5c1285fee5f0204711f59e9eba0f"
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
