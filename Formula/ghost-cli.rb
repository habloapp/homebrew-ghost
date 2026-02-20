class GhostCli < Formula
  desc "CLI for Ghost Networks — manage networks, devices, and WireGuard tunnels"
  homepage "https://gh-o.net"
  version "0.29.0"
  license "Proprietary"

  on_macos do
    url "https://ghost-pull-zone.b-cdn.net/d/cli/#{version}/macos/ghost-cli.tar.gz"
    sha256 "728908cd162790015223d2ed08a71d77f81d4fe56a415384b24d6cc956980d80"
  end

  on_linux do
    on_intel do
      url "https://ghost-pull-zone.b-cdn.net/d/cli/#{version}/linux-x64/ghost-cli.tar.gz"
      sha256 "803da49ece43cb7bd768fac5c60fe75f00e4c31b9eb575b6e74cf3aa8edbdcde"
    end

    on_arm do
      url "https://ghost-pull-zone.b-cdn.net/d/cli/#{version}/linux-arm64/ghost-cli.tar.gz"
      sha256 "5d07db23745227c2683cdaf5a3e5422d03eb325f8216c2c702c4ce4c857845df"
    end
  end

  def install
    bin.install "ghost-cli"
  end

  test do
    assert_match "ghost-cli version", shell_output("#{bin}/ghost-cli version")
  end
end
