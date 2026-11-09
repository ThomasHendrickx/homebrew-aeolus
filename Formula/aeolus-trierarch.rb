class AeolusTrierarch < Formula
  desc "Crews the ships of an Aeolus fleet on this machine"
  homepage "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch"
  version "0.38.7"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.7/aeolus-trierarch-darwin-arm64"
      sha256 "156af2a554c5a4cc932f0001c0ac46c23149f3730b9f985e6c416469ed151324"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.7/aeolus-trierarch-darwin-amd64"
      sha256 "1a082c553d91d476fb95a40eccd9c46ce20aa5f2d07d3c1fc2ae4d188be8cac3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.7/aeolus-trierarch-linux-arm64"
      sha256 "f03c4c08333e06d4571b0d65cb588bc7168deb3d934f6d87b14545ee425bdf01"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.7/aeolus-trierarch-linux-amd64"
      sha256 "49a462d789f55d014eba7a0eb883148177c8c86ed4340874f3cda2d895fecb53"
    end
  end

  def install
    binary = Dir["aeolus-trierarch-*"].first
    chmod 0555, binary
    bin.install binary => "aeolus-trierarch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/aeolus-trierarch --version --json")
  end
end
