class Jpsvis < Formula
  desc "Visualisation module for JuPedSim"
  homepage "https://www.jupedsim.org/"

  head "https://github.com/JuPedSim/jpsvis.git"

  option "with-demos", "Add demo files"

  depends_on "cmake" => :build
  depends_on "qt@5"
  depends_on "vtk"

  def install
    Dir.mkdir "build"
    Dir.chdir "build"
    system "cmake", ".."
    system "cmake", "--build", ".", "--target", "jpsvis"
    bin.install "#{buildpath}/bin/jpsvis.app/Contents/MacOS/jpsvis"
    prefix.install "#{buildpath}/bin/jpsvis.app"
    ohai "jpsvis install in #{prefix}/jpsvis.app"
    ohai ".. and linked to #{bin}"
    if build.with? "demos"
      doc.install Dir["#{buildpath}/samples"]
      ohai "Additional demo files are installed in #{doc}"
    end


  end
end
