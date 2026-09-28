# typed: false
# frozen_string_literal: true

class Tart < Formula
  desc "Run macOS VMs on Apple Silicon"
  homepage "https://github.com/cirruslabs/tart"
  url "https://cdn.appcircle.io/self-hosted/runner/tart/0.38.0/tart.tar.gz"
  sha256 "0870ca88e53c92f61372288af4a4caaac40cc23358fd82006e9ab9f63b3eac0a"
  version "0.38.0"
  license "AGPL-3.0"

  depends_on "appcircleio/cli/softnet"
  depends_on arch: :arm64
  depends_on :macos

  on_macos do
    depends_on macos: :monterey
  end

  def install
    bin.install "tart"
  end

  def caveats
    <<~EOS
      See the GitHub repository for more information
    EOS
  end
end
