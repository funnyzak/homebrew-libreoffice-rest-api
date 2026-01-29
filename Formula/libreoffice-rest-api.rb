# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class LibreofficeRestApi < Formula
  desc "A lightweight document conversion service based on Go that encapsulates Libre Office command line capabilities through REST API."
  homepage "https://github.com/funnyzak/libreoffice-rest-api"
  url "https://github.com/funnyzak/libreoffice-rest-api/releases/download/0.0.6/libreoffice-rest-api-darwin-amd64.tar.gz"
  version "0.0.6"
  sha256 "sha256:dd3c3e65dbcbe3c75970acbe99aea416b7750513cad4715e2a52b53a411720c5"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  on_intel do
    url "https://github.com/funnyzak/libreoffice-rest-api/releases/download/0.0.6/libreoffice-rest-api-darwin-amd64.tar.gz"
    sha256 "sha256:dd3c3e65dbcbe3c75970acbe99aea416b7750513cad4715e2a52b53a411720c5"
  end

  on_arm do
    url "https://github.com/funnyzak/libreoffice-rest-api/releases/download/0.0.6/libreoffice-rest-api-darwin-arm64.tar.gz"
    sha256 "sha256:dd3c3e65dbcbe3c75970acbe99aea416b7750513cad4715e2a52b53a411720c5"
  end

  def install
    bin.install "libreoffice-rest-api"
  end

  test do
    system "#{bin}/libreoffice-rest-api version"
  end
end