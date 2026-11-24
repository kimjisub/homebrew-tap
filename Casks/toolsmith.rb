cask "toolsmith" do
  version "2026.11.2"
  sha256 "6906aeff8fadfdda3e4e9ef457d0479b2f47fe2d520e550f84091da8a34e586f"

  url "https://github.com/kimjisub/toolsmith/releases/download/v#{version}/Toolsmith-#{version}.dmg"
  name "Toolsmith"
  desc "Menu bar utility you assemble from the tools you need"
  homepage "https://github.com/kimjisub/toolsmith"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Toolsmith.app"

  uninstall launchctl: "kim.jisub.toolsmith.helper",
            quit:      "kim.jisub.toolsmith"

  zap trash: [
    "~/Library/Application Support/kim.jisub.toolsmith",
    "~/Library/Caches/kim.jisub.toolsmith",
    "~/Library/HTTPStorages/kim.jisub.toolsmith",
    "~/Library/Preferences/kim.jisub.toolsmith.plist",
    "~/Library/Saved Application State/kim.jisub.toolsmith.savedState",
  ]
end
