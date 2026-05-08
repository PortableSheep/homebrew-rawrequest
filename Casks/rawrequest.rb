cask "rawrequest" do
  version "1.4.0"
  sha256 "cf2e5695bfabbd14ed41d9755df83c3f851ded58e7c5aae17d3e7d9c2b62962b"

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
