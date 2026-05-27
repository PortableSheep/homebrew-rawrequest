cask "rawrequest" do
  version "1.4.2"
  sha256 "6210e254119a0016568395caff95eeda41b635354446864288fd743bac432757"

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
