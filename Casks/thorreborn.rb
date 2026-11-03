cask "thorreborn" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.1.1"
  sha256 arm:   "0000000000000000000000000000000000000000000000000000000000000000",
        intel: "0000000000000000000000000000000000000000000000000000000000000000"

  url "https://github.com/marclundgren/thor-reborn/releases/download/v#{version}/ThorReborn-#{version}-#{arch}.dmg"
  name "ThorReborn"
  desc "Menu-bar app that switches to apps with global keyboard shortcuts"
  homepage "https://marclundgren.github.io/thor-reborn/"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "ThorReborn.app"

  zap trash: [
    "~/Library/Application Support/ThorReborn",
    "~/Library/Preferences/dev.thorreborn.ThorReborn.plist",
  ]
end
