class AeolusTrierarch < Formula
  desc "Crews the ships of an Aeolus fleet on this machine"
  homepage "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch"
  version "0.40.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.40.0/aeolus-trierarch-darwin-arm64"
      sha256 "4c9918550f87c44154bf21abd1c3205b6d1a5c1caccd3050ae9830aa167bde07"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.40.0/aeolus-trierarch-darwin-amd64"
      sha256 "99b70e191cee9abf35cbdc039fb0cd82673329a0620ea9a2ec64e290411c0ed0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.40.0/aeolus-trierarch-linux-arm64"
      sha256 "b8c23296ae169c3dbb6b1507ac17067aac48b029bfadd717177fcff7d9444970"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.40.0/aeolus-trierarch-linux-amd64"
      sha256 "a69d70720be439e4dc9a38c4e96930b3a4f30440142cbc526dc6e5645072ef0e"
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
