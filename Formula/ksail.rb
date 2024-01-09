class Ksail < Formula
  desc "Cli tool for provisioning gitops enabled k8s clusters in docker"
  homepage "https://github.com/devantler/ksail"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/devantler/ksail/releases/download/v1.0.14/ksail-v1.0.14-osx-arm64.tar.gz"
      sha256 "e2b4b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6"
    elsif Hardware::CPU.intel?
      url "https://github.com/devantler/ksail/releases/download/v1.0.14/ksail-v1.0.14-osx-x64.tar.gz"
      sha256 "e2b4b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/devantler/ksail/releases/download/v1.0.14/ksail-v1.0.14-linux-arm64.tar.gz"
      sha256 "e2b4b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b"
    elsif Hardware::CPU.intel?
      url "https://github.com/devantler/ksail/releases/download/v1.0.14/ksail-v1.0.14-linux-x64.tar.gz"
      sha256 "e2b4b6b6b6b6b6b6b6b6b6b6b6b6b6b6b6b"
    end
  end

  license "MIT"
  def install
    bin.install "ksail"
  end
end
