require("minitest/autorun")
require_relative("../rooms.rb")
require_relative("../songs.rb")
require_relative("../guests.rb")

class RoomsTest < MiniTest::Test

  def setups

    @song = New.Songs("Prizefighter")

    @guest = New.Guests("Bob")

    @room = New.Rooms("Boogy Room", [], [])

  end

end
