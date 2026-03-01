class GhostConnector < Formula
  desc "Ghost Networks Connector — always-on WireGuard tunnel agent for any device"
  homepage "https://gh-o.net"
  version "0.38.0"
  license "Proprietary"

  on_macos do
    url "https://ghost-pull-zone.b-cdn.net/d/connector/#{version}/macos-arm64/ghost-connector.tar.gz"
    sha256 "d376e96524a5d7bcdb18ac25236e95bd6c5be9908140430947a5b9eb9406e4d9"
  end

  on_linux do
    on_intel do
      url "https://ghost-pull-zone.b-cdn.net/d/connector/#{version}/linux-x64/ghost-connector.tar.gz"
      sha256 "73a8df8a4feb256ed952401a3df8fd6e465473cc5168b0c154e50c24952cee0d"
    end

    on_arm do
      url "https://ghost-pull-zone.b-cdn.net/d/connector/#{version}/linux-arm64/ghost-connector.tar.gz"
      sha256 "12491e60a092356c1c2a17049e9f3480c85396fc8b92f426f8a264c01f3821f8"
    end
  end

  def install
    bin.install "ghost_connector"
  end

  test do
    assert_match "ghost_connector", shell_output("#{bin}/ghost_connector version", 1)
  end
end
