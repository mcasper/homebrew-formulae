class GitClean < Formula
  desc "Command-line tool for cleaning up local git branches."
  homepage "https://github.com/mcasper/git-clean"
  url "https://github.com/mcasper/git-clean/archive/0.5.2.tar.gz"
  sha256 "c1d255dff44532b1d6f0388dd34dd76acc77f043417aa6bc83e02ecfcbf672c3"
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
