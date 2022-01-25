class Jupedsim < Formula
  desc "Pedestrian motion simulator and visualisation tool"
  homepage "https://www.jupedsim.org/"
  license "LGPL-3.0-or-later"

  stable do
    url "https://github.com/JuPedSim/jpscore.git",
      using:    :git,
      tag:      "v0.9.1",
      revision: "c5e67e288c0e7a750068aaa618388323bf69f413"
    option "with-demos", "Add demo files"
    depends_on "boost" => :build
    depends_on "cli11" => :build
    depends_on "cmake" => :build
    depends_on "fmt" => :build
    depends_on "git" => :build
    depends_on "ninja" => :build
    depends_on "spdlog" => :build
    depends_on "glm"
    depends_on "qt@5"
    depends_on "vtk"
  end

  head do
    url "https://github.com/JuPedSim/jpscore.git", branch: "master"
    depends_on "boost" => :build
    depends_on "cli11" => :build
    depends_on "cmake" => :build
    depends_on "fmt" => :build
    depends_on "git" => :build
    depends_on "ninja" => :build
    depends_on "rust" => :build
    depends_on "spdlog" => :build
    depends_on "glm"
    depends_on "qt@5"
    depends_on "vtk"
  end

  def install
    args = std_cmake_args + %w[
      -DCMAKE_BUILD_TYPE=Release
      -GNinja
    ]

    Dir.mkdir "build"
    Dir.chdir "build"

    system "cmake", "..", *args
    system "ninja"
    # move executables to the bin directory of the formula
    bin.install "bin/jpscore", "bin/jpsvis.app/Contents/MacOS/jpsvis"
    doc.install "../README.md", "../LICENSE"
    ohai "jpscore installed in #{bin}"
    if build.with? "demos"
      doc.install Dir["#{buildpath}/examples"]
      ohai "Additional example files are installed in #{doc}"
    end
  end

  test do
    last_release="0.9.0"
    test_version=shell_output("jpscore --version | grep Version | awk  '{ print $2 }'")
    ohai "checking version:"
    ohai "- expected: <#{last_release}>"
    ohai "- got: <#{test_version}>"
    assert_match last_release, test_version
  end
end
