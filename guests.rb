class Guest

attr_reader(:guest_name, :fav_song)
attr_accessor(:guest_money)

  def initialize(guest_name, guest_money, fav_song)
    @guest_name = guest_name
    @guest_money = guest_money
    @fav_song = fav_song
  end


end
