# typed: false
# frozen_string_literal: true

cask "rawrequest" do
  version "1.0.22"
  sha256 "f22ef30e0807214dd9a3b701bd90539594c6ff9d40c005c3f48c53a6b23efdcc"

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
