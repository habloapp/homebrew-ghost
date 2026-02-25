class GhostConnector < Formula
  desc "Ghost Networks Connector — always-on WireGuard tunnel agent for any device"
  homepage "https://gh-o.net"
  version "0.35.0"
  license "Proprietary"

  on_macos do
    url "https://ghost-pull-zone.b-cdn.net/d/connector/#{version}/macos-arm64/ghost-connector.tar.gz"
    sha256 "4a091615898aef37561ffa91ea9e2e9f3ed58b8d95597dc7424c3feca0cdc037"
  end

  on_linux do
    on_intel do
      url "https://ghost-pull-zone.b-cdn.net/d/connector/#{version}/linux-x64/ghost-connector.tar.gz"
      sha256 "608a495f4bacad36b0fd45a47ca794a992b2b285b182f4a0ead36bc202bc9b74"
    end

    on_arm do
      url "https://ghost-pull-zone.b-cdn.net/d/connector/#{version}/linux-arm64/ghost-connector.tar.gz"
      sha256 "cfb884c09f7a7209f8de6e0cb7ab4c9ed63c59037fce82d33ec1b231e383bbe2"
    end
  end

  def install
    bin.install "ghost_connector"
  end

  test do
    assert_match "ghost_connector", shell_output("#{bin}/ghost_connector version", 1)
  end
end
