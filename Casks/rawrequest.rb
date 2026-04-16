cask "rawrequest" do
  version "1.2.8"
  sha256 "42e6c0d6a3fdf84fe91a0cfe5a4bbaa07343e760a1b9831aa87ad6bc29830e0a"

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
