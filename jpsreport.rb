class Jpsreport < Formula
  desc "Analysis module for JuPedSim"
  homepage "https://www.jupedsim.org/"
  version "0.8.3"

  head "https://github.com/JuPedSim/jpsreport.git"

  option "with-demos", "Add demo files"
  depends_on "cmake" => :build
  depends_on "boost"

  def install
    Dir.pwd
    Dir.mkdir "build"
    Dir.chdir "build"
    system "cmake", "..", "-DCMAKE_BUILD_TYPE=Release", "-DCMAKE_RUNTIME_OUTPUT_DIRECTORY=."
    system "make", "install"
    bin.install "jpsreport"
    bin.install Dir["#{buildpath}/Release/scripts/*"]
    if build.with? "demos"
      bin.install Dir["#{buildpath}/Release/demos/*"]
    end
    puts "prefix: #{prefix}"
    puts "build: #{buildpath}"
    puts ""
    puts "-------------------------------------"
    puts "installed in /usr/local/bin/jpsreport"
    puts "-------------------------------------"
  end
end
