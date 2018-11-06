class Jpseditor < Formula
  desc "A graphical user interface to create the geometry of a scenario simulated by JuPedSim"
  homepage "https://www.jupedsim.org/"

  head "https://github.com/JuPedSim/jpseditor.git"

  depends_on "qt"

  def install
    ohai "#{buildpath}"
    ohai "#{prefix}"
    ohai "#{bin}"
    system "qmake", "."
    system "make", "install"
    bin.install "#{buildpath}/build/release/JPSeditor.app/Contents/MacOS/JPSeditor"
    prefix.install "#{buildpath}/build/release/JPSeditor.app"
    ohai "jpseditor install in #{prefix}/JPSeditor.app"
    ohai ".. and linked to #{bin}"
  end
end
