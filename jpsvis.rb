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
    bin.install "#{prefix}/JPSeditor.app/Contents/MacOS/jpsvis"
    prefix.install "#{prefix}/jpsvis.app"

    ohai "jpsvis install in #{prefix}/jpsvis.app"
    ohai ".. and linked to #{bin}"

  end
end
