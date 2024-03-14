class Ksail < Formula
  desc "CLI tool for provisioning GitOps enabled K8s clusters in docker"
  homepage "https://github.com/devantler/ksail"
  url "https://github.com/devantler/ksail/releases/download/v1.4.5/ksail.tar.gz"
  sha256 "ba3c6271bf8e178560b54fab4b188df2ad6e88a5d133a90019932cd476a896e8"
  license "MIT"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  def install
    if OS.mac?
      if Hardware::CPU.arm?
        bin.install "ksail-darwin-arm64" => "ksail"
      elsif Hardware::CPU.intel?
        bin.install "ksail-darwin-amd64" => "ksail"
      end
    elsif OS.linux?
      if Hardware::CPU.arm?
        bin.install "ksail-linux-arm64" => "ksail"
      elsif Hardware::CPU.intel?
        bin.install "ksail-linux-amd64" => "ksail"
      end
    end
  end

  test do
    system "#{bin}/ksail", "--version"
  end
end
