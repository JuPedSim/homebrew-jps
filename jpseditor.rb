class Jpseditor < Formula
  desc "A graphical user interface to create the geometry of a scenario simulated by JuPedSim"
  homepage "https://www.jupedsim.org/"

  head "https://github.com/JuPedSim/jpseditor.git"

  option "with-demos", "Add demo files"
  depends_on "qt"

  def install
    system "qmake", "."
    system "make", "install"
    bin.install "#{buildpath}/build/release/JPSeditor.app/Contents/MacOS/JPSeditor"
    prefix.install "#{buildpath}/build/release/JPSeditor.app"
    ohai "jpseditor installed in #{prefix}/JPSeditor.app"
    ohai ".. and linked to #{bin}"
    if build.with? "demos"
      doc.install Dir["#{buildpath}/examples"]
      ohai "Additional demo files are installed in #{doc}"
    end

  end
end
