class DockerVolumeExplorer < Formula
    desc "docker-volume-explorer"
    homepage "https://github.com/maksimaleshko/docker-volume-explorer"
    head "https://github.com/maksimaleshko/docker-volume-explorer.git"
  
    depends_on "docker" => :optional

    def install
        bin.install_symlink "#{libexec}/bin/docker-volume-explorer.sh" => "docker-volume-explorer"
    end
end