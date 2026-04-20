class Vivadicta < Formula
  desc "Command-line interface for VivaDicta for Mac"
  homepage "https://github.com/n0an/vivadicta-cli"
  url "https://github.com/n0an/vivadicta-cli/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "ca52335b14716195c4041f6fc4215e8c78504fa2785f6f1aae9e14ab098c61d5"
  license "MIT"
  version "1.0.0"

  depends_on :macos

  def install
    bin.install "vivadicta"
  end

  def caveats
    <<~EOS
      vivadicta is a thin shim that launches
      /Applications/VivaDicta.app/Contents/MacOS/VivaDicta --cli.

      Install the VivaDicta for Mac app first (notarized DMG):
        https://vivadicta.com

      Then list recent transcriptions:
        vivadicta recent 5

      Or search history:
        vivadicta search "sprint planning" --since yesterday

      Output is TTY-aware (text on terminal, JSON when piped). Override with
      --output {text,table,json,markdown} and --pretty. Run `vivadicta --help`
      for the full subcommand reference.
    EOS
  end

  test do
    # The shim prints a clear error when VivaDicta.app isn't present and exits 127.
    # Good enough as a smoke test — Homebrew's sandbox won't have the app installed.
    output = shell_output("#{bin}/vivadicta 2>&1", 127)
    assert_match "VivaDicta.app not found", output
  end
end
