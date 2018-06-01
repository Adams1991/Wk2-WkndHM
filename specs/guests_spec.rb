require("minitest/autorun")
require_relative("../guests.rb")

class GuestsTest < MiniTest::Test

  def setup
    @guest = Guests.new("Bob")
  end

  def test_guest_name
    assert_equal("Bob", @guest.guest_name())
  end

end
