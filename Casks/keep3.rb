cask "keep3" do
  version "1.0.0"
  sha256 "f45e48261f9166c3f10102b38247fc7531090d5b5083f83f1bc0bdb4ddad9cef"

  url "https://github.com/taobaorun/keep3/releases/download/v1.0.0/Keep3-1.0.0.dmg"
  name "Keep3"
  desc "Keep three priorities visible in the MacBook notch"
  homepage "https://github.com/taobaorun/keep3"

  depends_on arch: :arm64
  depends_on macos: ">= :sonoma"

  app "Keep3.app"

  caveats <<~EOS
    Keep3 is currently distributed without Apple Developer ID notarization.
    macOS may ask you to confirm the first launch from System Settings >
    Privacy & Security. This cask preserves quarantine and does not bypass
    Gatekeeper automatically.
  EOS
end
