class AeolusTrierarch < Formula
  desc "Crews the ships of an Aeolus fleet on this machine"
  homepage "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch"
  version "0.38.8"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.8/aeolus-trierarch-darwin-arm64"
      sha256 "55483d952dd94daa9ebee081d480152161706a63d23fe1fa0b18d7dd3254cc77"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.8/aeolus-trierarch-darwin-amd64"
      sha256 "c29a8f06eea1617a8bd0dcf95572bfb1e7156a39536046dba841864837fad04b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.8/aeolus-trierarch-linux-arm64"
      sha256 "edcca9a22c8297219761cd5433fc0514c6b291fffbb6a6cb3f1025b81f718804"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.8/aeolus-trierarch-linux-amd64"
      sha256 "4f0b5a3bbb127d17e2dde6e94fa49020eb3aeb368b11860e65d02fd33c50bba1"
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
