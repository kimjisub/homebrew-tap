cask "toolsmith" do
  version "2026.11.0"
  sha256 "2770a69a6a61cb574a39638cef28c1b8c26a18277b0736446a84c57748c7d519"

  url "https://github.com/kimjisub/toolsmith/releases/download/v#{version}/Toolsmith-#{version}.dmg"
  name "Toolsmith"
  desc "Menu bar utility you assemble from the tools you need"
  homepage "https://github.com/kimjisub/toolsmith"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :tahoe"

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
