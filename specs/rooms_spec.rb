require("minitest/autorun")
require_relative("../rooms.rb")
require_relative("../songs.rb")
require_relative("../guests.rb")

class RoomTest < MiniTest::Test

  def setup

    @song = Song.new("Prizefighter")

    @guest = Guest.new("Bob", 40)

    @room = Room.new("Boogy Room",[],[])

    @room2 = Room.new("Boogy Room",["Billy", "Dave", "Jim", "Lisa", "Jean"],[])

  end

  def test_room_name
    assert_equal("Boogy Room", @room.room_name())
  end

  def test_add_guest
    assert_equal(["Bob"], @room.add_guest(@guest.guest_name))
  end

  def test_remove_guest
    @room.add_guest(@guest.guest_name)
    @room.remove_guest(@guest.guest_name)
    assert_equal([], @room.guests_checked_in)
  end

  def test_add_song
    assert_equal(["Prizefighter"], @room.add_song(@song.song_name))
  end

  def test_room_limit
    @room2.add_guest(@guest.guest_name)
    assert_equal(5, @room2.guests_checked_in().count())
  end

  def test_remove_money_for_room
    @guest.remove_guest_money(@guest)
    assert_equal(0, @guest.guests_money())
  end

end
