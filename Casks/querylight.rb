cask "querylight" do
  version "1.0.3"
  sha256 "2210e37404097b9d6c3d418ca71f00082ef1ce2e56d24f110296bdd21aa2bb92"

  url "https://dl.querylight.app/QueryLight-#{version}.zip"
  name "QueryLight"
  desc "SQLite IDE with query plans, a profiler and schema diff"
  homepage "https://querylight.app/"

  livecheck do
    url "https://querylight.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "QueryLight.app"

  zap trash: [
    "~/Library/Application Scripts/app.querylight.QueryLight",
    "~/Library/Application Scripts/app.querylight.QueryLight.QuickLook",
    "~/Library/Application Support/QueryLight",
    "~/Library/Caches/app.querylight.QueryLight",
    "~/Library/Containers/app.querylight.QueryLight",
    "~/Library/Containers/app.querylight.QueryLight.QuickLook",
    "~/Library/HTTPStorages/app.querylight.QueryLight",
    "~/Library/HTTPStorages/app.querylight.QueryLight.binarycookies",
    "~/Library/Preferences/app.querylight.QueryLight.plist",
    "~/Library/Saved Application State/app.querylight.QueryLight.savedState",
    "~/Library/WebKit/app.querylight.QueryLight",
  ]
end
