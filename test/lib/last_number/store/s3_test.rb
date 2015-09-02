require File.expand_path('../../../../test_helper', __FILE__)

class S3Test < Minitest::Test
  include StoreTestSupport

  def store_opts
    {
      s3_key: nil,
      s3_secret: nil,
      s3_bucket: 'mock_bucket',
      object_key: 'mock_object_key',
    }
  end

  def setup
    @store = LastNumber::Store::S3.new(store_opts)
  end
end
