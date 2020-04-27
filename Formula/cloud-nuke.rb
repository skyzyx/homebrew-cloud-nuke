class CloudNuke < Formula
  desc "cloud-nuke was created for situations when you might have an account you use for testing and need to clean up leftover resources so you're not charged for them"
  homepage "https://github.com/gruntwork-io/cloud-nuke"
  url "https://github.com/gruntwork-io/cloud-nuke/releases/download/v0.1.18/cloud-nuke_darwin_amd64"

  bottle :unneeded

  def install
    system "mv", "cloud-nuke_darwin_amd64", "cloud-nuke"
    bin.install "cloud-nuke"
  end

  test do
    system "#{bin}/cloud-nuke", "--version"
  end
end
