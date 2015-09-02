require 'fileutils'

module LastNumber

  class Store::FileSystem < LastNumber::Store

    def read
      create_file
      JSON.parse(read_file)
    end

    def update(hash)
      create_file
      write_to_file(hash.to_json)
    end

    private

    def create_file
      FileUtils.mkdir_p(dir) unless Dir.exists?(dir)
      write_to_file({}.to_json) unless File.exists?(filename)
    end

    def write_to_file(string)
      File.open(filename, "w") { |f| f.write(string) }
    end

    def read_file
      File.open(filename, "r").read
    end

    def dir
      File.dirname(filename)
    end

    def filename
      @config[:file]
    end
  end
end
