cask "hyperkey" do
  version "1.0.0"
  sha256 "21934f5cccb13d8acd569ee0f654ccedf08aaba4165c57415d8c9227bb6e878a"

  url "https://github.com/n0an/hyperkey/releases/download/v#{version}/HyperKey.dmg"
  name "HyperKey"
  desc "Transform Caps Lock into a Hyper key (Cmd+Ctrl+Opt+Shift)"
  homepage "https://github.com/n0an/hyperkey"

  depends_on macos: ">= :ventura"

  app "HyperKey.app"

  zap trash: [
    "~/Library/Preferences/com.n0an.HyperKey.plist",
  ]
end
