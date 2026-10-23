cask "wave-ai" do
  version "2.2.8"
  sha256 "da38a28847c9a9154dc465f2a42d39b7338e71756cf55666b65bdbd5a12cfcf8"

  url "https://j2i8lgdonziyik2f.public.blob.vercel-storage.com/Wave-AI-Desktop-#{version}-mac-universal.dmg"
  name "Wave AI"
  desc "AI note taker for meetings, calls and conversations"
  homepage "https://wave.co/"

  livecheck do
    url "https://app.wave.co/api/desktop-beta?os=mac",
        header: "X-Requested-With: XMLHttpRequest"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Wave AI Desktop.app"

  zap trash: [
    "~/Library/Application Support/wave-meeting-recorder",
    "~/Library/Caches/com.ma.waveapp.desktop",
    "~/Library/Caches/com.ma.waveapp.desktop.ShipIt",
    "~/Library/Caches/wave-meeting-recorder-updater",
    "~/Library/HTTPStorages/com.ma.waveapp.desktop",
    "~/Library/Logs/Wave AI",
    "~/Library/Preferences/com.ma.waveapp.desktop.plist",
    "~/Library/Saved Application State/com.ma.waveapp.desktop.savedState",
  ]
end
