class Room

attr_reader :room_name

  def initialize(room_name, guests_checked_in, songs_list)
    @room_name = room_name
    @guests_checked_in = guests_checked_in
    @songs_list = songs_list
  end


end
