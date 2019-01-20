require('minitest/autorun')
require('minitest/rg')
require_relative('../song')


class TestSong < Minitest::Test

  def setup
    @song1 = Song.new("Bohemian Rhapsody")
    @song2 = Song.new("Africa")
    @song3 = Song.new("Welcome to the Jungle")
  end

  def test_if_song_has_title
    assert_equal("Bohemian Rhapsody", @song1.title)
  end


end
