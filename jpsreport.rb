class Jpsreport < Formula
  desc "Analysis module for JuPedSim"
  homepage "https://www.jupedsim.org/"

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
      doc.install Dir["#{buildpath}/Release/demos"]
      doc.install "../README.md", "../CHANGELOG.md", "../LICENSE"
      ohai "jpsreport along with helper scripts are installed in #{bin}"
      ohai "Additional demo files are installed in #{doc}"
    end
  end

  test do
    last_release="0.8.3"
    #assert_match version.to_s, shell_output("jpsreport -v 2>/dev/null")
    test_version=shell_output("jpsreport 2>/dev/null | grep Version | awk -F: '{ print $2 }' |  tr -d '[[:space:]]'")
    ohai "expected version: <#{last_release}>"
    ohai "got: <#{test_version}>"
    assert_match last_release, test_version
  end

end
