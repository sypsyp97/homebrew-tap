cask "kou" do
  version "0.1.0"
  sha256 "fd5f21a00fa792e0dc718ccbb1beb0a492d8a25f377706eb9ad96abbe55cab92"

  url "https://github.com/sypsyp97/kou/releases/download/v#{version}/Kou-#{version}-arm64.zip"
  name "Kou"
  desc "Local Mandarin dictation with a modifier-key shortcut"
  homepage "https://github.com/sypsyp97/kou"

  depends_on arch: :arm64
  depends_on formula: "opencc"
  depends_on formula: "uv"
  depends_on macos: :sonoma

  app "Kou.app"
  binary "#{appdir}/Kou.app/Contents/MacOS/Kou", target: "kou"

  uninstall quit: "io.github.sypsyp97.Kou"

  zap trash: [
    "~/Library/Application Support/Kou",
    "~/Library/Caches/Kou",
    "~/Library/Preferences/io.github.sypsyp97.Kou.plist",
  ]
end
