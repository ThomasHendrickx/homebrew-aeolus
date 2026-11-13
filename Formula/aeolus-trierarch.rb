class AeolusTrierarch < Formula
  desc "Crews the ships of an Aeolus fleet on this machine"
  homepage "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch"
  version "0.39.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.39.0/aeolus-trierarch-darwin-arm64"
      sha256 "daac623ef38327a5a552e511814e302516a855788c6fefde621abc662c435788"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.39.0/aeolus-trierarch-darwin-amd64"
      sha256 "49b86612c386ee21cca2a9672f22581da892d9edc738a1456bd7a12e365e04d4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.39.0/aeolus-trierarch-linux-arm64"
      sha256 "fc340dc126bb45e8db71b6058c0b706c031243a0733ab7da8e2084acc51b8a15"
    end
    on_intel do
      url "https://github.com/ThomasHendrickx/aeolus-fleet-trierarch/releases/download/v0.39.0/aeolus-trierarch-linux-amd64"
      sha256 "9cf7c67dab4e9934a5ca52542376e3a32abe3f78404428568528f259c61bf504"
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
