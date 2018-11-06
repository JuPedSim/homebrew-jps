class Jpscore < Formula
  desc "Core simulation module for JuPedSim"
  homepage "https://www.jupedsim.org/"

  head "https://github.com/JuPedSim/jpscore.git"

  option "with-demos", "Add demo files"
  option "with-jpsfire", "use JPSfire"
  option "with-airouter", "use AIrouter (experimental)"
  option "with-tests", "add tests (unit tests, RiMEA, ...)"
  depends_on "cmake" => :build
  depends_on "boost"
  # timer chrono system filesystem unit_test_framework
  depends_on "zlib" if build.with? "jpsfire"
  depends_on "cgal" if build.with? "airouter"

  needs :cxx11

  def install
    args = std_cmake_args + %W[
           "-DCMAKE_BUILD_TYPE=Release",
           "-DCMAKE_RUNTIME_OUTPUT_DIRECTORY=.",
    ]

    if build.with? "jpsfire"
      args <<  "-DJPSFIRE=true"
    end
    if build.with? "airouter"
      args << "-DAIROUTER=true",
    end
    if build.with? "tests"
      args << "-DBUILD_TESTING=ON"
      atgs << "-DBUILD_CPPUNIT_TEST=ON"
    end

    Dir.mkdir "build"
    Dir.chdir "build"
    system "cmake", "..", *args
    system "make"
    bin.install "jpscore"

    if build.with? "demos"
      bin.install Dir["#{buildpath}/demos"]
      ohai "demos in: #{buildpath}/demos"
    end

  end
end
