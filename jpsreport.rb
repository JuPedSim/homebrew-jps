class Jpsreport < Formula
  desc "Analysis module for JuPedSim"
  homepage "https://www.jupedsim.org/"

  head "https://github.com/JuPedSim/jpsreport.git"

  depends_on "qt"

  def install
    Dir.pwd
    Dir.mkdir "build"
    Dir.chdir "build"
    system "qmake", ".."
    system "make", "install"
    # system("cp /tmp/jpseditor/JPSeditor.app/Contents/MacOS/JPSeditor /usr/local/bin")
    puts ""
    puts "------------------------------------"
    puts "JPSeditor installed in /usr/local/bin/jpseditor"
    puts "------------------------------------"
  end
end
