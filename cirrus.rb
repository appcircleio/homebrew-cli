# This file was generated by GoReleaser. DO NOT EDIT.
class Cirrus < Formula
  desc "CLI for running Cirrus Tasks locally in Docker containers"
  homepage "https://github.com/cirruslabs/cirrus-cli"
  version "0.9.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.9.0/cirrus-darwin-amd64.tar.gz"
    sha256 "c3498cec52ddc5cff88a779aa9b1303663fc87b251198dbf029abbdc8592dd72"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/cirruslabs/cirrus-cli/releases/download/v0.9.0/cirrus-linux-amd64.tar.gz"
      sha256 "e523cadb9c810fa49b0cf37dc622a047d7936d58790f38b04836a89dd9ec9ff3"
    end
  end

  def install
    bin.install "cirrus"
  end

  def caveats; <<~EOS
    See the Github repository for more information
  EOS
  end
end
