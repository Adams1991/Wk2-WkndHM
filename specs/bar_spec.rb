require("minitest/autorun")
require_relative("../drinks.rb")
require_relative("../bar.rb")
require_relative("../rooms.rb")
require_relative("../guests.rb")

class BarTest < MiniTest::Test

  def setup
    @bar = Bar.new(
      {
      :drink_name => "Vodka Shot",
      :drink_price => 3.00
      },
      500)
  end

  def test_drinks_available
    assert_equal({:drink_name => "Vodka Shot", :drink_price=> 3.00}, @bar.drinks_available())
  end

  def test_till_ammount
    assert_equal(500, @bar.till_ammount())
  end

end
