class AeolusTrierarch < Formula
  desc "Crews the ships of an Aeolus fleet on this machine"
  homepage "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch"
  version "0.37.3"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.37.3/aeolus-trierarch-darwin-arm64"
      sha256 "37b6e04b856d8d3ad758f8e38956daa58d94cd00e8f04a14da24d1d9695d2d22"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.37.3/aeolus-trierarch-darwin-amd64"
      sha256 "b5c0ad5ce39589257d815b513020e92ffadb6b0fea5c9a72f86838d02d70d489"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.37.3/aeolus-trierarch-linux-arm64"
      sha256 "a84961f9d6cdc2c0474db33ad60f0023c15ed1fe39281465b7f0790ed456a778"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.37.3/aeolus-trierarch-linux-amd64"
      sha256 "adc76e379f1cc1696010e9038529681eb466c7def1a62a416d2d279a13d130a9"
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
