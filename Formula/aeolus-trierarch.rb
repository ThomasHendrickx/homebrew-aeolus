class AeolusTrierarch < Formula
  desc "Crews the ships of an Aeolus fleet on this machine"
  homepage "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch"
  version "0.41.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.41.1/aeolus-trierarch-darwin-arm64"
      sha256 "d77f2c228eb2d58d0036bf012d1d01b0d7977f06e24b7300eedc74fddfc96354"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.41.1/aeolus-trierarch-darwin-amd64"
      sha256 "7051eae551d024e8ec5d389318231da9072c4c764701c415e27fba04a284aa98"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.41.1/aeolus-trierarch-linux-arm64"
      sha256 "56f1a418e5b4030b719a5dfb51456b42fe9bb34fdc183061fa41b0721aa17cf0"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.41.1/aeolus-trierarch-linux-amd64"
      sha256 "58f18fad1a778e6f39ac17cde4d9d3a9c50295245adeac62300af2f80cf5e051"
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
