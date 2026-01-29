# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class libreoffice-rest-api < Formula
  desc "A powerful HTTP request debugging tool built in Go"
  homepage "https://github.com/funnyzak/libreoffice-rest-api"
  url "https://github.com/funnyzak/libreoffice-rest-api/releases/download/0.2.2/libreoffice-rest-api-darwin-amd64.tar.gz"
  version "0.2.2"
  sha256 "sha256:468748a87f211a7fd7dbf4af4636c237f2c35d16ef3331101a75c5547b35f9e5"
  license "MIT"

  livecheck do
    url :stable
    strategy :github_latest
  end

  depends_on :macos

  on_intel do
    url "https://github.com/funnyzak/libreoffice-rest-api/releases/download/0.2.2/libreoffice-rest-api-darwin-amd64.tar.gz"
    sha256 "sha256:468748a87f211a7fd7dbf4af4636c237f2c35d16ef3331101a75c5547b35f9e5"
  end

  on_arm do
    url "https://github.com/funnyzak/libreoffice-rest-api/releases/download/0.2.2/libreoffice-rest-api-darwin-arm64.tar.gz"
    sha256 "sha256:468748a87f211a7fd7dbf4af4636c237f2c35d16ef3331101a75c5547b35f9e5"
  end

  def install
    bin.install "libreoffice-rest-api"
  end

  test do
    system "#{bin}/libreoffice-rest-api --version"
  end
end