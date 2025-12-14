# typed: false
# frozen_string_literal: true

cask "rawrequest" do
  version "1.0.0"
  sha256 "91af63651d36dc5c03622f0e64ba65bc8c671aa26cf26a19533ae3e51d5134d9"

  url "https://github.com/portablesheep/RawRequest/releases/download/v#{version}/RawRequest-v#{version}-macos-universal.tar.gz"
  name "RawRequest"
  desc "Modern, lightweight HTTP client for developers"
  homepage "https://github.com/portablesheep/RawRequest"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "RawRequest.app"

  zap trash: [
    "~/Library/Application Support/rawrequest",
    "~/Library/Preferences/com.rawrequest.app.plist",
    "~/Library/Caches/rawrequest",
  ]
end
