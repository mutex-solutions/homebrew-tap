# typed: false
# frozen_string_literal: true

# Homebrew formula for clavis — Claude Code provider manager.
# Works on macOS and Linux (Linuxbrew). Updated automatically by goreleaser
# on each clavis release; edit there, not here.
class Clavis < Formula
  desc "Claude Code provider manager — one binary, many backends"
  homepage "https://github.com/dinhlongviolin1/clavis"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/dinhlongviolin1/clavis/releases/download/v0.2.0/clavis_darwin_arm64.tar.gz"
      sha256 "0079100c24b862ff02219fdd1b43131c09a29f5f4821e8a0dd1d508130170ad4"
    end
    on_intel do
      url "https://github.com/dinhlongviolin1/clavis/releases/download/v0.2.0/clavis_darwin_amd64.tar.gz"
      sha256 "f24b14430c0da66d339d3e7160e67767c4ad51b4b098e5c01df7c1f2429f5358"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/dinhlongviolin1/clavis/releases/download/v0.2.0/clavis_linux_arm64.tar.gz"
      sha256 "a6842ec1ec61dc0f302ee39826bca912222f93fbc62725d1a60c6f49f256aac2"
    end
    on_intel do
      url "https://github.com/dinhlongviolin1/clavis/releases/download/v0.2.0/clavis_linux_amd64.tar.gz"
      sha256 "a2acbeefa81d99da68fae5d3e4f01a068d3eb9b1097cdf9286aced98bb72cc1a"
    end
  end

  def install
    bin.install "clavis"
  end

  test do
    assert_match "clavis", shell_output("#{bin}/clavis version")
  end
end
