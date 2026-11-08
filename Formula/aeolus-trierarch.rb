class AeolusTrierarch < Formula
  desc "Crews the ships of an Aeolus fleet on this machine"
  homepage "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch"
  version "0.38.2"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.2/aeolus-trierarch-darwin-arm64"
      sha256 "47118cd282c1662d9cdbdc1b80decaec8127d1861ab571213d4f4ec6f5dae7d8"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.2/aeolus-trierarch-darwin-amd64"
      sha256 "3e5bf13ed1816884cdc7a4ea442979de36b1d40593c639617e5e2f8f91902ce8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.2/aeolus-trierarch-linux-arm64"
      sha256 "38e3603792c93d0abb56804d0fef649b3dfd84b4b69ba7e49dddc4863adf5f18"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.2/aeolus-trierarch-linux-amd64"
      sha256 "c96b6b0631eb31596427d5baba19ac8bd597173ffd984a8c6131f8598d92f4d6"
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
