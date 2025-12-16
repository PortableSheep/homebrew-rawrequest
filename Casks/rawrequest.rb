# typed: false
# frozen_string_literal: true

cask "rawrequest" do
  version "1.0.1"
  sha256 "82a435144dce7c3235a56e519014380fc8393d5f3e7fc92c51c7b96df86b4ef9"

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
