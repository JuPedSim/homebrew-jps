class Jpsreport < Formula
  desc "Analysis module for JuPedSim"
  homepage "https://www.jupedsim.org/"
  version "0.8.3"

  head "https://github.com/JuPedSim/jpsreport.git"

  option "with-demos", "Add demo files"
  depends_on "cmake" => :build
  depends_on "boost"
  depends_on "python" => :optional
 # polygons too, but there is no formula for that

  def install
    Dir.pwd
    Dir.mkdir "build"
    Dir.chdir "build"
    system "cmake", "..", "-DCMAKE_BUILD_TYPE=Release", "-DCMAKE_RUNTIME_OUTPUT_DIRECTORY=."
    system "make", "install"
    bin.install "jpsreport"
    bin.install Dir["#{buildpath}/Release/scripts"]
    if build.with? "demos"
      bin.install Dir["#{buildpath}/Release/demos"]
      doc.install "README", "CHANGELOG.md", "LICENSE"
      ohai "demos is: #{buildpath}/Release/demos"
      ohai "Additional helper scripts are installed in #{pkgshare}"
    end
  end

  test do
    assert_match version.to_s, shell_output("jpsreport -v 2>/dev/null")
  end

end
