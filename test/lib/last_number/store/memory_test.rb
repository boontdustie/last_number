require File.expand_path('../../../../test_helper', __FILE__)

class MemoryTest < Minitest::Test
  include StoreTestSupport

  def setup
    @store = LastNumber::Store::Memory.new({})
  end
end
