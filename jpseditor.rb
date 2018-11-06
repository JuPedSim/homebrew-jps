class Jpseditor < Formula
  desc "A graphical user interface to create the geometry of a scenario simulated by JuPedSim"
  homepage "https://www.jupedsim.org/"

  head "https://github.com/JuPedSim/jpseditor.git"

  depends_on "qt"

  def install
    Dir.pwd
    Dir.mkdir "build"
    Dir.chdir "build"
    system "qmake", ".."
    system "make", "install"
    bin.install "#{prefix}/JPSeditor.app/Contents/MacOS/JPSeditor"
    prefix.install "#{prefix}/JPSeditor.app"
    ohai "jpseditor install in #{prefix}/JPSeditor.app"
    ohai ".. and linked to #{bin}"
  end
end
