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
    puts "prefix: #{prefix}"
    puts "prefix: #{buildpath}"
    puts "prefix: #{bin}"
    bin.install "/tmp/jpseditor/JPSeditor.app/Contents/MacOS/JPSeditor"
    prefix.install "/tmp/jpseditor/JPSeditor.app"
    puts ""
    puts "------------------------------------"
    puts "JPSeditor installed in /usr/local/bin/jpseditor"
    puts "------------------------------------"
  end
end
