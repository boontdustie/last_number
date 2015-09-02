module AWS
  def self.s3
    MockAWS
  end
end

class MockAWS
  def initialize(aws_opts={})
    @bucket = MockBucket.new
  end

  def buckets
    { "mock_bucket" => @bucket }
  end
end

class MockBucket

  def initialize
    @mock_s3_file = MockS3File.new
  end

  def objects
    { "mock_object_key" => @mock_s3_file }
  end
end

class MockS3File

  def initialize
    @fake = nil
  end

  def write(string)
    @fake = string
  end

  def read
    @fake
  end

  def exists?
    !!@fake
  end
end
