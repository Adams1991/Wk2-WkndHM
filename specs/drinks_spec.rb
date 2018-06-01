require("minitest/autorun")
require_relative("../drinks.rb")

class DrinkTest < MiniTest::Test

  def setup
    @drink = Drink.new({:drink_name => "Buckfast Shot", :drink_price=> 1.50})
  end

  def test_drink_name
    assert_equal({:drink_name => "Buckfast Shot", :drink_price=> 1.50}, @drink.drink_details())
  end

end
