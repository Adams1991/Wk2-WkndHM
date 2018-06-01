require("minitest/autorun")
require_relative("../guests.rb")

class GuestsTest < MiniTest::Test

  def setup
    @guest = Guests.new("Bob")
  end

  # def test_song_name
  #   assert_equal("Prizefighter", @song.song_name())
  # end

end
