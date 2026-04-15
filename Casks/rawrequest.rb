cask "rawrequest" do
  version "1.2.7"
  sha256 "1867ab08f003cfea6e6801b7c4ba4d3d9772c1ce0c23bb69283676f234683fa5"

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
