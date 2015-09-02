require File.expand_path('../../../../test/test_helper', __FILE__)

class AskForMemoryStoreTest < Minitest::Test
  include AskForTestSupport

  def setup
    @af = LastNumber::AskFor.new("a_key", :memory)
  end
end

class AskForS3Test < Minitest::Test
  include AskForTestSupport

  def store_opts
    {
      s3_key: nil,
      s3_secret: nil,
      s3_bucket: 'mock_bucket',
      object_key: 'mock_object_key',
    }
  end

  def setup
    @af = LastNumber::AskFor.new("a_key", :s3, store_opts)
  end
end

class AskForFileSystemTest < Minitest::Test
  include AskForTestSupport

  TEST_FILE = "test.json"

  def setup
    @af = LastNumber::AskFor.new("a_key", :file_system, { file: TEST_FILE })
  end

  def teardown
    File.delete(TEST_FILE)
  end
end
