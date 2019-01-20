require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')
require_relative('../song')
require('pry')

class TestRoom < Minitest::Test

  def setup
    @room1 = Room.new("Room_1", 4, 5)
    @room2 = Room.new("Room_2", 4, 5)
    @room3 = Room.new("Room_3", 2, 5)
    @room = [@room1, @room2, @room3]
    @guest1 = Guest.new("Cleyra", 50, "La Macarena")
    @guest2 = Guest.new("Paola", 40, "Welcome to the Jungle")
    @guest3 = Guest.new("Cheche", 5, "Bohemian Rhapsody")
    @guest4 = Guest.new("Juan", 5, "Africa")
    @song1 = Song.new("Bohemian Rhapsody")
    @song2 = Song.new("Africa")
    @song3 = Song.new("Welcome to the Jungle")
    @song4 = Song.new("La Macarena")
  end

  def test_room_number
    assert_equal("Room_1", @room1.room_number)
  end


  def test_check_in_guest
    @room1.check_in_guest(@guest1)
    assert_equal(1, @room1.count_guest())
  end

  def test_check_out_guest
    @room1.check_out_guest(@guest1)
    assert_equal(0, @room1.count_guest())
  end

  def test_if_room_has_songs
    @room1.add_songs(@song1)
    assert_equal(1, @room1.count_song())
  end

  def test_room_capacity
    assert_equal(4, @room1.capacity)
  end


  def test_room_capacity__no_space
    @room3.check_in_guest(@guest1)
    @room3.check_in_guest(@guest2)
    assert_equal(true, @room3.no_capacity())
  end

  def test_if_guest_can_affort_entry_fee
    @room1.check_in_guest(@guest3)
    assert_equal(true, @room1.check_if_guest_can_affort_entry_fee(@guest3))
  end

  def test_check_if_favourite_song_is_in_playlist
    @room1.add_songs(@song1.title)
    assert_equal("Whooo!", @room1.check_favourite_song(@guest3))
  end

end
