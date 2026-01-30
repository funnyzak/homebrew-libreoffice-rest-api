# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class LibreofficeRestApi < Formula
  desc "A lightweight document conversion service based on Go that encapsulates Libre Office command line capabilities through REST API."
  homepage "https://github.com/funnyzak/libreoffice-rest-api"
  version "0.1.2"
  license "AGPL-3.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  on_intel do
    url "https://github.com/funnyzak/libreoffice-rest-api/releases/download/0.1.2/libreoffice-rest-api-darwin-amd64.tar.gz"
    sha256 "3f63b209754430d3314b093db9e77952297981066cbb2fa48f940d0dbcbb1698"
  end

  on_arm do
    url "https://github.com/funnyzak/libreoffice-rest-api/releases/download/0.1.2/libreoffice-rest-api-darwin-arm64.tar.gz"
    sha256 "061f849bf0d748f0aa658b2f135a141a976bb582621fd8711cd788df2631d268"
  end

  def install
    bin.install "libreoffice-rest-api"
  end

  test do
    system "#{bin}/libreoffice-rest-api version"
  end
end