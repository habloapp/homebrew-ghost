class GhostConnector < Formula
  desc "Ghost Networks Connector — always-on WireGuard tunnel agent for any device"
  homepage "https://gh-o.net"
  version "0.33.0"
  license "Proprietary"

  on_macos do
    url "https://ghost-pull-zone.b-cdn.net/d/connector/#{version}/macos-arm64/ghost-connector.tar.gz"
    sha256 "616df97e50cc9014ef978c2b23c84e64066f674561de0653accc122ff09ba141"
  end

  on_linux do
    on_intel do
      url "https://ghost-pull-zone.b-cdn.net/d/connector/#{version}/linux-x64/ghost-connector.tar.gz"
      sha256 "8236fdbd8f61db2b0b6a35f1d1346db7e27c4f070155a91850d824ae8915e51f"
    end

    on_arm do
      url "https://ghost-pull-zone.b-cdn.net/d/connector/#{version}/linux-arm64/ghost-connector.tar.gz"
      sha256 "772e27cfbe3629e15c2d4535ae4e4b07d8cc06faf8d453fa4d21b479e62e31ab"
    end
  end

  def install
    bin.install "ghost_connector"
  end

  test do
    assert_match "ghost_connector", shell_output("#{bin}/ghost_connector version", 1)
  end
end
