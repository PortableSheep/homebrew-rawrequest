cask "rawrequest" do
  version "1.2.4"
  sha256 "0f4a7734e4cff91694f7f268695c8942d9f1704f5c9a98c1e5dd7e260204edf6"

  url "https://github.com/portablesheep/RawRequest/releases/download/v#{version}/RawRequest-v#{version}-macos-universal.tar.gz"
  name "RawRequest"
  desc "Code-first HTTP client for developers"
  homepage "https://rawrequest.dev"

  app "RawRequest-v#{version}/RawRequest.app"
  binary "RawRequest-v#{version}/rawrequest"

  zap trash: [
    "~/Library/Application Support/RawRequest",
    "~/Library/Preferences/dev.rawrequest.plist",
  ]
end
