require("minitest/autorun")
require_relative("../rooms.rb")
require_relative("../songs.rb")
require_relative("../guests.rb")

class RoomTest < MiniTest::Test

  def setup

    @song = Song.new("Prizefighter")

    @guest = Guest.new("Bob")

    @room = Room.new("Boogy Room", [], [])

  end

  def test_room_name
    assert_equal("Boogy Room", @room.room_name())
  end

  def test_add_guest
    add_guest(@guest)
    assert_equal(["Bob"], @room.add_guest)
  end


end
