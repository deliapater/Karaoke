require('minitest/autorun')
require('minitest/rg')
require_relative('../guest')


class TestGuest < Minitest::Test

  def setup
    @guest1 = Guest.new("Cleyra", 50, "La Macarena")
    @guest2 = Guest.new("Paola", 40, "Welcome to the Jungle")
    @guest3 = Guest.new("Cheche", 5, "Bohemian Rhapsody")
    @guest4 = Guest.new("Juan", 5, "Africa")

  end

  def test_if_guest_has_name
    assert_equal("Cleyra", @guest1.name)
  end

  def test_if_guest_has_money
    assert_equal(50, @guest1.money)
  end

  def test_guest_favourite_song
    assert_equal("Africa", @guest4.favourite_song)
  end
end
