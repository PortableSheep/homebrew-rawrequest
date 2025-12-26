# typed: false
# frozen_string_literal: true

cask "rawrequest" do
  version "1.0.13"
  sha256 "2b799bad6f3a97b967a48e1afa2fac6330d17adc8bde39897fe566bda901da81"

  url "https://github.com/portablesheep/RawRequest/releases/download/v#{version}/RawRequest-v#{version}-macos-universal.tar.gz"
  name "RawRequest"
  desc "Modern, lightweight HTTP client for developers"
  homepage "https://github.com/portablesheep/RawRequest"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "RawRequest-v#{version}/RawRequest.app"

  zap trash: [
    "~/Library/Application Support/rawrequest",
    "~/Library/Preferences/com.rawrequest.app.plist",
    "~/Library/Caches/rawrequest",
  ]
end
