class LibimobiledeviceGlue < Formula
  desc "Library with common code used by the libimobiledevice project"
  homepage "https://www.libimobiledevice.org/"
  license "LGPL-2.1"
  head "https://github.com/libimobiledevice/libimobiledevice-glue.git"

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "libtool" => :build
  depends_on "pkg-config" => :build
  depends_on "libplist"

  def install
    system "./autogen.sh", "--prefix=#{prefix}"
    system "make", "install"
  end
end
