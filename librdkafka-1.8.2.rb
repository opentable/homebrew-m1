class Librdkafka182 < Formula
  desc "Apache Kafka C/C++ library"
  homepage "https://github.com/opentable/librdkafka-1.8.2"
  url "https://github.com/opentable/librdkafka-1.8.2/archive/refs/tags/1.8.2-ot.tar.gz"
  sha256 "0b8edddcd166fcfbe28a833ef6973de89858e15148ea8323ff79216038424f12"
  license "BSD-2-Clause"

  depends_on "pkg-config" => :build
  depends_on "python@3.10" => :build
  depends_on "lz4"
  depends_on "lzlib"
  depends_on "openssl@1.1"
  depends_on "zstd"

  def install
    system "./configure", "--prefix=#{prefix}"
    system "make"
    system "make", "install"
  end

  test do
    (testpath/"test.c").write <<~EOS
      #include <librdkafka/rdkafka.h>
      int main (int argc, char **argv)
      {
        int partition = RD_KAFKA_PARTITION_UA; /* random */
        int version = rd_kafka_version();
        return 0;
      }
    EOS
    system ENV.cc, "test.c", "-L#{lib}", "-lrdkafka", "-lz", "-lpthread", "-o", "test"
    system "./test"
  end

end
