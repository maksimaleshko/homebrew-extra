class SonarqubeAT672 < Formula
    desc "Manage code quality"
    homepage "https://www.sonarqube.org/"
    url "https://sonarsource.bintray.com/Distribution/sonarqube/sonarqube-6.7.2.zip"
    sha256 "506333bf0766fc5a72bbe0e22d8948e8b9d96878d35ae41c9ed80a59ea1ef833"
  
    bottle :unneeded
  
    depends_on :java => "1.8+"
  
    def install
      # Delete native bin directories for other systems
      rm_rf Dir["bin/{linux,windows}-*"]
  
      libexec.install Dir["*"]
  
      bin.install_symlink "#{libexec}/bin/macosx-universal-64/sonar.sh" => "sonar"
    end
  
    plist_options :manual => "sonar console"
  
    def plist; <<~EOS
      <?xml version="1.0" encoding="UTF-8"?>
      <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
      <plist version="1.0">
      <dict>
          <key>Label</key>
          <string>#{plist_name}</string>
          <key>ProgramArguments</key>
          <array>
          <string>#{opt_bin}/sonar</string>
          <string>start</string>
          </array>
          <key>RunAtLoad</key>
          <true/>
      </dict>
      </plist>
      EOS
    end
  
    test do
      assert_match "SonarQube", shell_output("#{bin}/sonar status", 1)
    end
  end