cask "thorreborn" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.2.1"
  sha256 arm:   "249a42f4d0ff3fef6021c9c8926ac6b7b229f5ac9b8c6469fd97c0ec33e9ae35",
        intel: "72569f47c17a18549ab8b513cbd70fc8f7bd06d16a56915b8ee1209e48c498d0"

  url "https://github.com/marclundgren/thor-reborn/releases/download/v#{version}/ThorReborn-#{version}-#{arch}.dmg"
  name "ThorReborn"
  desc "Menu-bar app that switches to apps with global keyboard shortcuts"
  homepage "https://marclundgren.github.io/thor-reborn/"

  auto_updates true
  depends_on macos: :sonoma

  app "ThorReborn.app"

  zap trash: [
    "~/Library/Application Support/ThorReborn",
    "~/Library/Preferences/dev.thorreborn.ThorReborn.plist",
  ]
end
