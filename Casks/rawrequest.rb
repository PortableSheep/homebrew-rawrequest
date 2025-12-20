# typed: false
# frozen_string_literal: true

cask "rawrequest" do
  version "1.0.2"
  sha256 "864050c7d8cbe1148b05cc095a86c9823b0e7be44940fdb3810f4a8c55d3d9f4"

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
