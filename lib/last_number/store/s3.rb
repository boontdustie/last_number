module LastNumber

  class Store::S3 < LastNumber::Store

    def read
      create_file
      JSON.parse(file.read)
    end

    def update(hash)
      create_file
      file.write(hash.to_json)
    end

    private

    def create_file
      file.write("{}") unless file_exists?
    end

    def file_exists?
      file.exists?
    end

    def file
      bucket.objects[@config[:object_key]]
    end

    def bucket
      s3.buckets[@config[:s3_bucket]]
    end

    def s3
      @s3 ||= AWS.s3.new(
        access_key_id: @config[:s3_key],
        secret_access_key: @config[:s3_secret]
      )
    end
  end
end
