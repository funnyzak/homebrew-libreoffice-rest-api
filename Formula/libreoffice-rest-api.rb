# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class LibreofficeRestApi < Formula
  desc "A lightweight document conversion service based on Go that encapsulates Libre Office command line capabilities through REST API."
  homepage "https://github.com/funnyzak/libreoffice-rest-api"
  version "0.1.0"
  license "AGPL-3.0"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  on_intel do
    url "https://github.com/funnyzak/libreoffice-rest-api/releases/download/0.1.0/libreoffice-rest-api-darwin-amd64.tar.gz"
    sha256 "36e5b321495787124a681ceea9f5ea2ef40d6f6d4f72d1fe27a4237a54c860f0"
  end

  on_arm do
    url "https://github.com/funnyzak/libreoffice-rest-api/releases/download/0.1.0/libreoffice-rest-api-darwin-arm64.tar.gz"
    sha256 "35fa2e53d609f06c87427d5c1225f303752bb82f2a3c5dbd906838ecbf03e3f8"
  end

  def install
    bin.install "libreoffice-rest-api"
  end

  test do
    system "#{bin}/libreoffice-rest-api version"
  end
end