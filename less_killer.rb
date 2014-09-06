# Destroys .less files after site generation
module Jekyll
  class LessKiller < Generator
  require 'fileutils'

    safe true
    priority :low

    def generate(site)
      FileUtils.cd("#{Dir.pwd}/_site/css") do
        FileUtils.rm Dir.glob('*.less'), verbose: true
      end
    end
  end
end
