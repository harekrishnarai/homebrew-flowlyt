class Flowlyt < Formula
  desc "Multi-Platform CI/CD Security Analyzer"
  homepage "https://github.com/harekrishnarai/flowlyt"
  version "2.0.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/harekrishnarai/flowlyt/releases/download/v2.0.1/flowlyt-darwin-arm64"
      sha256 "11746031ba6854688ea48fe07d65d3a8a29c78ca53a40eb43625e0e357a72bf5"
    end
    on_intel do
      url "https://github.com/harekrishnarai/flowlyt/releases/download/v2.0.1/flowlyt-darwin-amd64"
      sha256 "6e1edc04a5c4046d9d8f2db8e367cf97fc6360078d63197a224728707b2d7299"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/harekrishnarai/flowlyt/releases/download/v2.0.1/flowlyt-linux-arm64"
      sha256 "ddc26cb9cac43e492132b4ca81d5d983cdb038555aab657b92f85a24a93d6765"
    end
    on_intel do
      url "https://github.com/harekrishnarai/flowlyt/releases/download/v2.0.1/flowlyt-linux-amd64"
      sha256 "61f4cafe777f74d24586c26357b19ff4e81a03e23aa02cf8167dae32c938e791"
    end
  end

  def install
    bin.install Dir["flowlyt-*"].first => "flowlyt"
  end

  test do
    assert_match "flowlyt version", shell_output("#{bin}/flowlyt --version")
  end
end
