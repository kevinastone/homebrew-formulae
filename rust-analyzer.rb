class RustAnalyzer < Formula
  desc "Rust-analyzer is an implementation of Language Server Protocol for the Rust programming language"
  homepage "https://rust-analyzer.github.io"
  version "2020-06-15"
  url "https://github.com/rust-analyzer/rust-analyzer/releases/download/#{version}/rust-analyzer-mac"
  sha256 "d4218daf0a8c306af95f22c89251554f6b6a291609fcf25a1f39abbcc9a2bcf3"

  # depends_on "rust" => :build

  def install
    bin.install "rust-analyzer-mac" => "rust-analyzer"
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test rust-analyzer`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
