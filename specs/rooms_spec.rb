require("minitest/autorun")
require_relative("../rooms.rb")
require_relative("../songs.rb")
require_relative("../guests.rb")

class RoomTest < MiniTest::Test

  def setup

    @song = Song.new("Prizefighter")

    @guest = Guest.new("Bob", 40, "Prizefighter")

    @guest2 = Guest.new("Leila", 5, "Happy")

    @room = Room.new("Boogy Room", [], [], 10, 0)

    @room2 = Room.new("Boogy Room", ["Billy", "Dave", "Jim", "Lisa", "Jean"], ["Prizefighter"], 10, 0)

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

  def test_room_cost
    assert_equal(10 ,@room.room_cost())
  end


  def test_remove_money_for_room__can_afford
    @room.remove_guest_money(@guest)
    assert_equal(30, @guest.guest_money())
  end

  def test_remove_money_for_room__cannot_afford
    @room.remove_guest_money(@guest2)
    assert_equal(5, @guest2.guest_money())
  end

  def test_add_money_to_till
    assert_equal(10,   @room.add_guest_money_till(@room))
  end

  def test_till_ammount
    assert_equal(0, @room.room_till())
  end

  def test_fav_song_in_room
    assert_equal("Woooo", @room2.fav_song_in_room(@guest.fav_song))
  end

end
