class AeolusTrierarch < Formula
  desc "Crews the ships of an Aeolus fleet on this machine"
  homepage "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch"
  version "0.38.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.9/aeolus-trierarch-darwin-arm64"
      sha256 "2896b251d7b26f5d9bed3d61021d5694fad7fa84d496461d45035afbaffd0725"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.9/aeolus-trierarch-darwin-amd64"
      sha256 "a77ecbf9b4763ee35f4bc0fac6ca6db342e4dbe49a3fc2f587a8768d14c8a4b5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.9/aeolus-trierarch-linux-arm64"
      sha256 "1e19dbf8c88ec65b963a8f23a1ec519b6ed2aed1ca416713d2e872bcfcb248b8"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.9/aeolus-trierarch-linux-amd64"
      sha256 "264170cac18db0cbaa17281682401361589c150c92a72f6b27c7463fcfbbd2e1"
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
