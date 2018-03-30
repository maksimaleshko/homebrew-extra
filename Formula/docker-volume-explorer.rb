class DockerVolumeExplorer < Formula
    desc "docker-volume-explorer"
    homepage "https://github.com/maksimaleshko/docker-volume-explorer"
    url "https://raw.githubusercontent.com/maksimaleshko/docker-volume-explorer/master/docker-volume-explorer.sh"
    sha256 "66be7b17febf7ad8f991bce64efd869f0029096674213ca5f8fa69d687d34912"
    version "1.0.0"
  
    depends_on "docker" => :optional

    def install
        bin.install "docker-volume-explorer.sh" => "docker-volume-explorer"
    end
end