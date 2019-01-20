class Bar
  attr_accessor :room, :fee, :total

  def initialize(room, fee)
    @room = room
    @fee = fee
    @total = 0
  end

  # Rooms can keep track of the entry fees/spending of the guests - maybe add a bar tab/bar class?
  def add_money
    @total += fee
  end

  # Add anything extra you think would be good to have at a karaoke venue!
  def check_free_venue
    if @total >= 20
      return true
    end
  end

  def get_free_venue
    if @total >= 20
      return @fee
    end
  end

end
