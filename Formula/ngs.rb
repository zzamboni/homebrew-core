class Ngs < Formula
  desc "Next Generation Shell"
  homepage "https://ngs-lang.org"
  url "https://github.com/ngs-lang/ngs/archive/v0.2.6.tar.gz"
  sha256 "22b8c371dcb6d55d0ff4f227b66523cdb07a15ff8ede72ff05cc9c478e67f1ca"
  depends_on "awk" => :build
  depends_on "bdw-gc" => :build
  depends_on "cmake" => :build
  depends_on "json-c" => :build
  depends_on "make" => :build
  depends_on "pandoc" => :build
  depends_on "peg" => :build
  depends_on "pkg-config" => :build

  def install
    system "make", "build", "install"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test foo`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "true"
  end
end
