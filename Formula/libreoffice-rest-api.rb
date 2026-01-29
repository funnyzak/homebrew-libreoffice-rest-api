# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class LibreofficeRestApi < Formula
  desc "A lightweight document conversion service based on Go that encapsulates Libre Office command line capabilities through REST API."
  homepage "https://github.com/funnyzak/libreoffice-rest-api"
  url "https://github.com/funnyzak/libreoffice-rest-api/releases/download/0.0.5/libreoffice-rest-api-darwin-amd64.tar.gz"
  version "0.0.5"
  sha256 "8136cc41d636782e5f3a109c20a1bb6c8ff5ef9ae90ca928751c55e68495fc2f"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  on_intel do
    url "https://github.com/funnyzak/libreoffice-rest-api/releases/download/0.0.5/libreoffice-rest-api-darwin-amd64.tar.gz"
    sha256 "8136cc41d636782e5f3a109c20a1bb6c8ff5ef9ae90ca928751c55e68495fc2f"
  end

  on_arm do
    url "https://github.com/funnyzak/libreoffice-rest-api/releases/download/0.0.5/libreoffice-rest-api-darwin-arm64.tar.gz"
    sha256 "c8454a4c6a65b6c034475f41990d0be3f92e08953baa10b9617ebeefd445af7c"
  end

  def install
    bin.install "libreoffice-rest-api"
  end

  test do
    system "#{bin}/libreoffice-rest-api version"
  end
end