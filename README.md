# Homebrew Tap

Custom Homebrew tap for my macOS apps.

## Installation

```bash
brew tap n0an/tap
```

## Available Casks

### HyperKey

Transform Caps Lock into a Hyper key (Cmd+Ctrl+Opt+Shift).

```bash
brew install --cask hyperkey-app
```

[More info](https://github.com/n0an/hyperkey)

## Available Formulae

### vivadicta-mcp

Shim that launches the VivaDicta for Mac MCP server. Install the VivaDicta app first from https://vivadicta.com, then:

```bash
brew install n0an/tap/vivadicta-mcp
claude mcp add --scope user vivadicta -- vivadicta-mcp
```

[More info](https://github.com/n0an/VivaDictaMac/blob/main/docs/mcp-server.md)

### vivadicta

Shim that launches the VivaDicta for Mac CLI (read transcriptions, search, export to Obsidian from the terminal). Install the VivaDicta app first from https://vivadicta.com, then:

```bash
brew install n0an/tap/vivadicta
vivadicta recent 5
vivadicta search "sprint planning" --since yesterday
```

[More info](https://github.com/n0an/VivaDictaMac/blob/main/docs/cli.md)
