module LastNumber

  class Store::S3
    FILENAME = 'last_number.json'

    def initialize(config)
      @config = {}
      config.each { |k,v| @config[k.to_sym] = v }
    end

    def record_exists?
      file.exists?
    end

    def create_record
      file.write("{}")
    end

    def read
      file.read
    end

    def write(str)
      file.write(str)
    end

    private

    def file
      bucket.objects[FILENAME]
    end

    def bucket
      s3.buckets[@config[:s3_bucket]]
    end

    def s3
      AWS::S3.new(
        access_key_id: @config[:s3_key],
        secret_access_key: @config[:s3_secret]
      )
    end
  end
end
