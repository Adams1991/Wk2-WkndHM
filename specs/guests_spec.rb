require("minitest/autorun")
require_relative("../guests.rb")

class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Bob", 45, "One Last Time")
  end

  def test_guest_name
    assert_equal("Bob", @guest.guest_name())
  end

  def test_guest_money
    assert_equal(45, @guest.guest_money())
  end

  def test_fav_song
    assert_equal("One Last Time", @guest.fav_song())
  end

  def test_pay_money
    assert_equal(45, @guest.pay_money())
  end

end
