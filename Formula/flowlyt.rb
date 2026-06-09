class Flowlyt < Formula
  desc "Multi-Platform CI/CD Security Analyzer"
  homepage "https://github.com/harekrishnarai/flowlyt"
  version "2.0.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/harekrishnarai/flowlyt/releases/download/v2.0.0/flowlyt-darwin-arm64"
      sha256 "d07412f205be14f5c0b4f75640fbe9b466f6d9366c79460dc65602aa0fa56361"
    end
    on_intel do
      url "https://github.com/harekrishnarai/flowlyt/releases/download/v2.0.0/flowlyt-darwin-amd64"
      sha256 "d2a1de1b23d3c90c1aa0458a274eee00137221bae479dec7eb9e62228b0d2756"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/harekrishnarai/flowlyt/releases/download/v2.0.0/flowlyt-linux-arm64"
      sha256 "3bdf7c7b5684e1b8aac2a475c13ec5bdba9d327df25dab26f271ac8c1ee605dd"
    end
    on_intel do
      url "https://github.com/harekrishnarai/flowlyt/releases/download/v2.0.0/flowlyt-linux-amd64"
      sha256 "e086a01e58c669ca811d23498d41c5f4654d86645c8233fab54f0a984ea6bfcb"
    end
  end

  def install
    bin.install Dir["flowlyt-*"].first => "flowlyt"
  end

  test do
    assert_match "flowlyt version", shell_output("#{bin}/flowlyt --version")
  end
end
