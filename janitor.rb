# typed: false
# frozen_string_literal: true

class Janitor < Formula
  desc "Clean up package directories as oneshot"
  homepage "https://github.com/b4moss/janitor"
  url "https://github.com/b4moss/janitor/releases/download/v0.2.1/janitor-0.2.1.tar.gz"
  sha256 "0ce5b069017cba353849d4d4eacf26c1dfadf1e855d9f2245e217d87141a47b0"
  license "MIT"

  def install
    bin.install "src/janitor.sh" => "janitor"
  end

  test do
    assert_match "No target directories", shell_output("#{bin}/janitor --dry-run")
  end
end
