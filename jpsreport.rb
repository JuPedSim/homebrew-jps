class Jpsreport < Formula
  desc "Analysis module for JuPedSim"
  homepage "https://www.jupedsim.org/"

  head "https://github.com/JuPedSim/jpsreport.git"
  depends_on "cmake" => :build
  depends_on "boost"

  def install
    Dir.pwd
    Dir.mkdir "build"
    Dir.chdir "build"
    system "cmake", "..", "-DCMAKE_BUILD_TYPE=Release", "-DCMAKE_RUNTIME_OUTPUT_DIRECTORY=."
    system "make", "install"
    #bin.install "jpsreport"
    puts ""
    puts "-------------------------------------"
    puts "installed in /usr/local/bin/jpsreport"
    puts "-------------------------------------"
  end
end
