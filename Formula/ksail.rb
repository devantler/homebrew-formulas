class Ksail < Formula
  desc "Cli tool for provisioning gitops enabled k8s clusters in docker"
  homepage "https://github.com/devantler/ksail"
  os = OS.mac? ? "osx" : "linux"
  arch = Hardware::CPU.arm? ? "arm64" : "x64"
  url "https://github.com/devantler/ksail/releases/download/v#{version}/ksail-v#{version}-#{os}-#{arch}.tar.gz"
  version "1.0.13"
  license "MIT"
  def install
    bin.install "ksail"
  end
end
