# typed: false
# frozen_string_literal: true

class Janitor < Formula
  desc "Clean up package directories as oneshot"
  homepage "https://github.com/b4moss/janitor"
  url "https://github.com/b4moss/janitor/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "496fd5c6e9c02c8d63eb412471dfb235df70f79a94325d8aee317faa94ac1a9a"
  license "MIT"

  def install
    bin.install "src/janitor.sh" => "janitor"
  end

  test do
    assert_match "No target directories", shell_output("#{bin}/janitor --dry-run")
  end
end
