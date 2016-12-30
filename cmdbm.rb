# Documentation: https://github.com/Homebrew/brew/blob/master/docs/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/brew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class Cmdbm < Formula
  desc "Adds command bookmark functionality"
  homepage "https://github.com/suhirotaka/homebrew-utility"
  url "https://github.com/suhirotaka/homebrew-utility/raw/master/shell/command_bookmarks.sh.tar.gz"
  version "1.0.1"
  sha256 "7d07c90eb85abab903f21928d802b2d17067dd517d171a4c0242113b5c372bf4"

  # depends_on "cmake" => :build
  # depends_on :x11 # if your formula requires any X11/XQuartz components

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel

    # Remove unrecognized options if warned by configure
    # system "./configure", "--disable-debug",
    #                       "--disable-dependency-tracking",
    #                       "--disable-silent-rules",
    #                       "--prefix=#{prefix}"
    # system "cmake", ".", *std_cmake_args
    # system "make", "install" # if this fails, try separate make/make install steps
    system "mv", "command_bookmarks.sh", "cmdbm"
    bin.install "cmdbm"
  end

  def caveats
    msg = <<-EOF.undent
cmdbm successfully installed.
EOF
    msg
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test ecs`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
     system "false"
  end
end
