# This file was generated by GoReleaser. DO NOT EDIT.
class Swag < Formula
  desc "Swag gen doc"
  homepage ""
  version "2.1.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/DADDYLAB/swag/releases/download/v2.1.1/swag_2.1.1_Darwin_x86_64.tar.gz"
    sha256 "8fe4fdab0c47ac25f0abea42cbc94c70dd22635707e98c32f85941649ffd487f"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/DADDYLAB/swag/releases/download/v2.1.1/swag_2.1.1_Linux_x86_64.tar.gz"
      sha256 "8a3a16a90c39d0c7893c66ae936702f9835adfc1f3c09e6dccec06b40f0b4b74"
    end
  end

  def install
    system "rm -f #{bin}/swag"
    bin.install "swag"
  end

  def caveats; <<~EOS
    swag init
  EOS
  end

  plist_options :startup => false

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
...

  EOS
  end

  test do
    system "#{bin}/swag --version"
  end
end
