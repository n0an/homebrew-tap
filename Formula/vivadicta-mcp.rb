class VivadictaMcp < Formula
  desc "MCP server shim for VivaDicta for Mac"
  homepage "https://github.com/n0an/vivadicta-mcp"
  url "https://github.com/n0an/vivadicta-mcp/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "3ec3e001463fcf770c36ee52aa069711d38fa8a2307ad28050b3f93e4c8f3d23"
  license "MIT"
  version "1.0.0"

  depends_on :macos

  def install
    bin.install "vivadicta-mcp"
  end

  def caveats
    <<~EOS
      vivadicta-mcp is a thin shim that launches
      /Applications/VivaDicta.app/Contents/MacOS/VivaDicta --mcp-server.

      Install the VivaDicta for Mac app first (notarized DMG):
        https://vivadicta.com

      Then register the MCP server with Claude Code:
        claude mcp add --scope user vivadicta -- vivadicta-mcp

      Or with any other stdio-capable MCP client (Claude Desktop, Cursor,
      Codex CLI, Zed, VS Code).
    EOS
  end

  test do
    # The shim prints a clear error when VivaDicta.app isn't present and exits 127.
    # Good enough as a smoke test — Homebrew's sandbox won't have the app installed.
    output = shell_output("#{bin}/vivadicta-mcp 2>&1", 127)
    assert_match "VivaDicta.app not found", output
  end
end
