class DeeplApiUsage < Formula
  desc "Tiny CLI for checking DeepL API usage and quota"
  homepage "https://github.com/tmault/deepl-api-usage"
  license "MIT"
  head "https://github.com/tmault/deepl-api-usage.git", branch: "main"

  def install
    bin.install "bin/deepl"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/deepl --help")
  end
end
