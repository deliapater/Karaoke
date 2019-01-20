require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../bar')

class TestBar < Minitest::Test

  def setup
    @bar = Bar.new(@room, 5)
    @room1 = Room.new("Room_1", 4, 5)
    @room2 = Room.new("Room_2", 4, 5)
    @room3 = Room.new("Room_3", 2, 5)
    @room = [@room1, @room2, @room3]
  end


  def test_check_room_entry_fee
    assert_equal(5, @bar.add_money)
  end

  def test_if_guest_has_spent_more_than_20
    @bar.add_money
    @bar.add_money
    @bar.add_money
    @bar.add_money
    assert_equal(true, @bar.check_free_venue)
  end

  def test_get_free_venue
    @bar.add_money
    @bar.add_money
    @bar.add_money
    @bar.add_money
    assert_equal(5, @bar.get_free_venue)
  end
end
