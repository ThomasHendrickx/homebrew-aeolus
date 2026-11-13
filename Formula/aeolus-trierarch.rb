class AeolusTrierarch < Formula
  desc "Crews the ships of an Aeolus fleet on this machine"
  homepage "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch"
  version "0.39.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.39.1/aeolus-trierarch-darwin-arm64"
      sha256 "5818961e90fe37d6af9fc2228a8e2f7bfc7c29082575d671b2152a7fe4469809"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.39.1/aeolus-trierarch-darwin-amd64"
      sha256 "75f46247160777401a3e9cc1c8063070f36cbc1d5eb5c4698715f647cf7956d7"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.39.1/aeolus-trierarch-linux-arm64"
      sha256 "207eadf45af177297eb060d6bac7794c83e9179a05fa4572538e5d00079653eb"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.39.1/aeolus-trierarch-linux-amd64"
      sha256 "b9139f829df9ff7a5bdf6138b3ee556558bce85173eca8b9a4072aafc9bf1447"
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
