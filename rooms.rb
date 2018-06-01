class Room

attr_reader(:room_name, :guests_checked_in, :songs_list)

  def initialize(room_name, guests_checked_in, songs_list)
    @room_name = room_name
    @guests_checked_in = guests_checked_in
    @songs_list = songs_list
  end

  def add_guest(guest_name)
    return if guests_checked_in.count() >= 4
    @guests_checked_in << guest_name
  end

  def remove_guest(guest_name)
    guest_index = @guests_checked_in.index(guest_name)
    @guests_checked_in.delete_at(guest_index)
  end

  def add_song(song_name)
    return @songs_list.push(song_name)
  end

end
