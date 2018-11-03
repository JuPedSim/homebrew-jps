class Jpsvis < Formula
  desc "Visualisation module for JuPedSim"
  homepage "https://www.jupedsim.org/"

  head "https://github.com/JuPedSim/jpsvis.git"

  depends_on "cmake" => :build
  depends_on "qt"
  depends_on "vtk"

  def install
    Dir.pwd
    Dir.mkdir "build"
    Dir.chdir "build"
    system "cmake", ".."
    system "make", "install"
#    system("cp /tmp/jpsvis.app/Contents/MacOS/jpsvis /usr/local/bin/")
    puts ""
    puts "------------------------------------"
 #   puts "jpsvis installed in /usr/local/bin/jpsvis"
    puts "------------------------------------"
  end
end
