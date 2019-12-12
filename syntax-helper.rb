require 'rbconfig'
class Syntax_Helper < Formula
  desc ""
  homepage "https://github.com/alishalabi/syntax-helper"
  version "snapshot"

  if Hardware::CPU.is_64_bit?
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/alishalabi/syntax-helper/releases/download/vsnapshot/syntax-cli_darwin_amd64.zip"
      sha256 "960f7cf9df87eacf87346d0aef8acc4a916cbb7890b35c90302d56bbd711161f"
    when /linux/
      url "https://github.com/alishalabi/syntax-helper/releases/download/vsnapshot/"
      sha256 ""
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  else
    case RbConfig::CONFIG['host_os']
    when /mswin|msys|mingw|cygwin|bccwin|wince|emc/
      :windows
    when /darwin|mac os/
      url "https://github.com/alishalabi/syntax-helper/releases/download/vsnapshot/syntax-cli_darwin_386.zip"
      sha256 "dcb3842db22a013879bd05ccb93628b4e14507cf1100e416f2727c8f880254e7"
    when /linux/
      url "https://github.com/alishalabi/syntax-helper/releases/download/vsnapshot/"
      sha256 ""
    when /solaris|bsd/
      :unix
    else
      :unknown
    end
  end

  def install
    bin.install "syntax-helper"
  end

  test do
    system "syntax-helper"
  end

end
