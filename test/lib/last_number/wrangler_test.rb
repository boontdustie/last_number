require File.expand_path('../../../../test/test_helper', __FILE__)

class WranglerTest < Minitest::Test

  def test_last_gives_you_zero_if_key_not_in_hash
    memory_store = LastNumber::Store::Memory.new({})
    test_key = 'test_key'

    refute memory_store.read.keys.include?(test_key)
    assert LastNumber::Wrangler.new(test_key, memory_store).last == 0
  end

  def test_last_gives_you_value_if_key_in_hash
    memory_store = LastNumber::Store::Memory.new({})
    test_key = 'test_key'
    test_value = 100

    wrangler = LastNumber::Wrangler.new(test_key, memory_store)
    wrangler.update(test_value)
    assert wrangler.last == test_value
  end

  def test_handles_store_being_nil
  end

  def test_different_wranglers_with_different_keys_can_use_the_same_store
    memory_store = LastNumber::Store::Memory.new({})
    key1 = 'key1'
    key2 = 'key2'
    
    w1 = LastNumber::Wrangler.new(key1, memory_store)
    w2 = LastNumber::Wrangler.new(key2, memory_store)

    assert w1.last == 0
    assert w2.last == 0

    w1.update(100)

    assert w1.last == 100
    assert w2.last == 0
    assert memory_store.read.keys.include?(key1)
    refute memory_store.read.keys.include?(key2)

    w2.update(200)

    assert w1.last == 100
    assert w2.last == 200
    assert memory_store.read.keys.include?(key1)
    assert memory_store.read.keys.include?(key2)
  end
end
