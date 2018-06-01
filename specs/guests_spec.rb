require("minitest/autorun")
require_relative("../guests.rb")

class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Bob")
  end

  def test_guest_name
    assert_equal("Bob", @guest.guest_name())
  end

end
