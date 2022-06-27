class JetbrainsToolbox < Formula
  desc "Manage your IDEs the easy way"
  homepage "https://www.jetbrains.com/toolbox-app/"
  version "1.24.12080"

  if OS.linux?
    if Hardware::CPU.intel?
      url "https://download.jetbrains.com/toolbox/jetbrains-toolbox-#{version}.tar.gz"
      sha256 "d819065a45d29d53646490fbd8ca45dbcaa3d544bdbc6da4494377460ddf6b79"
    end
  end

  def install
    bin.install "jetbrains-toolbox"
  end
end

