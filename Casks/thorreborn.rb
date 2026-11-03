cask "thorreborn" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.2.0"
  sha256 arm:   "60f1e1eba9f1e28e331b5ac3eeee808b38e7eeeaf38c8f4787024e5031a6df49",
        intel: "c6a38bd333f60e93d9eb053cd19131b301b3d660d60c5bf4110aa789b7ff1d27"

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
