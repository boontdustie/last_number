require File.expand_path('../../../../test_helper', __FILE__)

class FileSystemTest < Minitest::Test
  include StoreTestSupport

  TEST_FILE = "test.json"

  def setup
    @store = LastNumber::Store::FileSystem.new({ file: TEST_FILE })
  end

  def teardown
    File.delete(TEST_FILE)
  end
end
