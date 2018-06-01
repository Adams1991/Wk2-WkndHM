require("minitest/autorun")
require_relative("../songs.rb")

class SongsTest < MiniTest::Test

  def setup
    @song = Songs.new("Prizefighter")
  end

  def test_song_name
    assert_equal("Prizefighter", @song.song_name())
  end

end
