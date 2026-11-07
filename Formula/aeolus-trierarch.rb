class AeolusTrierarch < Formula
  desc "Crews the ships of an Aeolus fleet on this machine"
  homepage "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch"
  version "0.38.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.0/aeolus-trierarch-darwin-arm64"
      sha256 "7d553d81d32ce49792b33054351ef2f026abe26f1e72c579c532ad7a53049305"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.0/aeolus-trierarch-darwin-amd64"
      sha256 "956bf1fb65a189d5c7ba1ce2a4e85fdc012a003dfb44e87a36ccaf73a40a25c9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.0/aeolus-trierarch-linux-arm64"
      sha256 "d5d2519cac8fb60a66e067a58d76b3fcc3d5f1171a6fb65ee96949c45d5eb357"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.0/aeolus-trierarch-linux-amd64"
      sha256 "374d14f1d45fa43a869d91e4a1005f2545255e40016cb4e80a86783d1c411220"
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
