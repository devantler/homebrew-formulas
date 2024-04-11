class Ksail < Formula
  desc "CLI tool for provisioning GitOps enabled K8s clusters in docker"
  homepage "https://github.com/devantler/ksail"
  url "https://github.com/devantler/ksail/archive/v1.4.11.tar.gz"
  sha256 "25a9b58d920f6c273007f9737ee81e9496c79e947a8695976dcffd0ab63e428b"
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
