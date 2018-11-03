class Jpscore < Formula
  desc "Core simulation module for JuPedSim"
  homepage "https://www.jupedsim.org/"

  head "https://github.com/JuPedSim/jpscore.git"
  # options
  # AIROUTER --> CGAL
  # JPSFIRE --> ZLIB
  # BUILD_TESTING

  depends_on "cmake" => :build
  depends_on "boost"
  # timer chrono system filesystem unit_test_framework

  def install
    Dir.pwd
    Dir.mkdir "build"
    Dir.chdir "build"
    system "cmake", ".."
    system "make", "install"
  end
end
