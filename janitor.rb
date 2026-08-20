# typed: false
# frozen_string_literal: true

class Janitor < Formula
  desc "Clean up package directories as oneshot"
  homepage "https://github.com/b4moss/janitor"
  url "https://github.com/b4moss/janitor/releases/download/v0.3.0/janitor-0.3.0.tar.gz"
  sha256 "d6efb7952c016037ec07445cba0e8a73b8b52c7c2b5d4426e4b4a7752f36926d"
  license "MIT"

  def install
    bin.install "src/janitor.sh" => "janitor"
  end

  test do
    assert_match "No target directories", shell_output("#{bin}/janitor --dry-run")
  end
end
