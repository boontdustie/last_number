module StoreTestSupport
  def test_read_on_new_store_returns_empty_hash
    assert @store.read == {}
  end

  def test_read_on_updated_store_returns_updated_hash
    assert @store.read == {}
    hsh = { "key_1" => 1 }
    @store.update(hsh)
    assert @store.read == hsh
  end

  def test_can_add_multiple_keys
    assert @store.read == {}
    hsh = { "key_1" => 1, "key_2" => 2, "key_3" => 3 }
    @store.update(hsh)
    assert @store.read.keys.count == hsh.keys.count
  end
end
