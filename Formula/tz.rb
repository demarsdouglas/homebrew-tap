class Tz < Formula
    desc "Realtime timezone viewer CLI"
    homepage "https://github.com/demarsdouglas/tz-cli"
    version "1.0.0"
  
    on_macos do
      url "https://github.com/demarsdouglas/tz-cli/releases/download/v1.0.0/tz-darwin-arm64.tar.gz"
      sha256 "c5f89b6e9a2b1ae42599f1699b30b60ccef9fa81102d13080a71c01fd78a4745"
  
      def install
        bin.install "tz"
      end
    end
  
    on_linux do
      url "https://github.com/demarsdouglas/tz-cli/releases/download/v1.0.0/tz-linux-amd64.tar.gz"
      sha256 "5488141ce3733e6a3656e81fdd8b4ce7777f77f552bd17f364793b372af85984"
  
      def install
        bin.install "tz"
      end
    end
  
    test do
      system "#{bin}/tz", "--help"
    end
  end
  