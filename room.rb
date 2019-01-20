class Room
  attr_accessor :room_number, :guest_list, :capacity

  def initialize(room_number, capacity, entry_fee)
    @room_number = room_number
    @guest_list = []
    @playlist = []
    @capacity = capacity
    @entry_fee =  entry_fee

  end

  # Check in guests to rooms
  def check_in_guest(guest)
    @guest_list << guest
  end

  def count_guest()
    return @guest_list.count
  end

  # Check out guests from rooms
  def check_out_guest(guest)
    @guest_list.delete(guest)
  end

  # Add songs to rooms
  def add_songs(song)
    @playlist << song
  end

  def count_song()
    return @playlist.count

  end

  # What happens if there are more guests trying to be checked in than there is free space in the room?
  def no_capacity()
    if @capacity <= count_guest()
      return true
    else
      return false
    end
  end

  # Karaoke venues usually have an entry fee - So the guests could have money so they can pay it.
  def check_if_guest_can_affort_entry_fee(guest)
    if @entry_fee <= guest.money
      return true
    else
      return false
    end
  end

  # Guests could have a favourite song, and if their favourite song is on the room's playlist, they can cheer loudly! (return a string like "Whoo!")
  def check_favourite_song(guest)
    if @playlist.include?(guest.favourite_song)
      return "Whooo!"
    end
  end

end
