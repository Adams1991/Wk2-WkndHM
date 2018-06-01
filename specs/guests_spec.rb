require("minitest/autorun")
require_relative("../guests.rb")

class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Bob", 45)
  end

  def test_guest_name
    assert_equal("Bob", @guest.guest_name())
  end

  def test_guest_money
    assert_equal(45, @guest.guest_money())
  end


end
