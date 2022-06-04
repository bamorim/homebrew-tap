class OpCli < Formula
  desc "Command-line interface for 1Password"
  homepage "https://1password.com"
  version "2.4.0"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://cache.agilebits.com/dist/1P/op2/pkg/v#{version}/op_linux_amd64_v#{version}.zip"
      sha256 "cf68cc312f96aef1e9b69496b4c42fa581473f00b8ce0965b876702e8dd965d6"
    end
  end

  def install
    bin.install "op"
  end

  def test
    assert_equal "2.4.0", shell_output("#{bin}/op -v")
  end
end

