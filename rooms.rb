class Room

attr_reader :room_name

  def initialize(room_name, guests_checked_in, songs_list)
    @room_name = room_name
    @guests_checked_in = guests_checked_in
    @songs_list = songs_list
  end

  def add_guest(guest_name)
    return @guests_checked_in.push(guest_name)
  end

  def add_song(song_name)
    return @songs_list.push(song_name)
  end



end
