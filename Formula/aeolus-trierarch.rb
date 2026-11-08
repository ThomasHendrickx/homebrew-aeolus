class AeolusTrierarch < Formula
  desc "Crews the ships of an Aeolus fleet on this machine"
  homepage "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch"
  version "0.38.4"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.4/aeolus-trierarch-darwin-arm64"
      sha256 "4d5253462bc7d523964b959cb50a0c80f5e3c7d8adbde196c76466bc77af7588"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.4/aeolus-trierarch-darwin-amd64"
      sha256 "28ada60634b7cf4b1c0b73e28bfef971167604ac6c3881d3dee7ba15f2f52bac"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.4/aeolus-trierarch-linux-arm64"
      sha256 "37ccc6bf44978f399fece103dd743a890f20181ef1211fa7d0a9085532baeaea"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.38.4/aeolus-trierarch-linux-amd64"
      sha256 "a745c58e574e38fe5563f557274e0e905151887cf0661127195f467dc4ec9a44"
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
