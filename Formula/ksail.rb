class Ksail < Formula
  desc "Cli tool for provisioning gitops enabled k8s clusters in docker"
  homepage "https://github.com/devantler/ksail"
  version "1.0.11"
  if OS.mac?
    if Hardware::CPU.arm?
      url "https://github.com/devantler/ksail/archive/refs/tags/v1.0.11.tar.gz"
      sha256 "7e50d40776ac24ed7e2306846bbe6a8760fa994195cb29ab7edc2e4105928bda"
    elsif Hardware::CPU.intel?
      url "https://github.com/devantler/ksail/releases/download/v#{version}/ksail-osx-x64.tar.gz"
      sha256 "replace_with_osx_x64_sha256"
    else
      raise "Unable to determine binary to download for macOS on unknown CPU architecture"
    end
  elsif OS.linux?
    if Hardware::CPU.arm?
      url "https://github.com/devantler/ksail/releases/download/v#{version}/ksail-linux-arm64.tar.gz"
      sha256 "replace_with_linux_arm64_sha256"
    elsif Hardware::CPU.intel?
      url "https://github.com/devantler/ksail/releases/download/v#{version}/ksail-linux-x64.tar.gz"
      sha256 "replace_with_linux_x64_sha256"
    else
      raise "Unable to determine binary to download for Linux on unknown CPU architecture"
    end
  end

  def install
    bin.install "ksail"
  end
end
