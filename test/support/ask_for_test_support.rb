module AskForTestSupport
  def test_intially_gives_you_zero_as_last_number
    assert @af.last == 0
  end

  def test_update_adds_number_to_storage
    assert @af.last == 0

    new_last_number = 10
    @af.update(new_last_number)
    assert @af.last == new_last_number
  end

  def test_next_gives_you_the_last_number_plus_one
    assert @af.last == 0

    new_last_number = 10
    @af.update(new_last_number)
    assert @af.last == new_last_number
    assert @af.next == new_last_number + 1
  end
end
