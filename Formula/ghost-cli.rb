class GhostCli < Formula
  desc "CLI for Ghost Networks — manage networks, devices, and WireGuard tunnels"
  homepage "https://gh-o.net"
  version "0.30.0"
  license "Proprietary"

  on_macos do
    url "https://ghost-pull-zone.b-cdn.net/d/cli/#{version}/macos/ghost-cli.tar.gz"
    sha256 "4970edb127f5e1e2641f259267d80301c01da9b8689b0bca22e23bbf6e67f05b"
  end

  on_linux do
    on_intel do
      url "https://ghost-pull-zone.b-cdn.net/d/cli/#{version}/linux-x64/ghost-cli.tar.gz"
      sha256 "253cab265187cc987b807b38211ad98d6bc56ac8b03fd6a1ebca3061cd6fcfb6"
    end

    on_arm do
      url "https://ghost-pull-zone.b-cdn.net/d/cli/#{version}/linux-arm64/ghost-cli.tar.gz"
      sha256 "22e34e69f3d4a1190a977ab0ea33b8a5fcd8d4057eb4201d8655c2d549b6759e"
    end
  end

  def install
    bin.install "ghost-cli"
  end

  test do
    assert_match "ghost-cli version", shell_output("#{bin}/ghost-cli version")
  end
end
