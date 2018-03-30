class DockerVolumeExplorer < Formula
    desc "docker-volume-explorer"
    homepage "https://github.com/maksimaleshko/docker-volume-explorer"
    head "https://github.com/maksimaleshko/docker-volume-explorer.git"
  
    depends_on "docker" => :recommended

    def install
        bin.install 'docker-volume-explorer'
    end
end