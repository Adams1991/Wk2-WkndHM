require("minitest/autorun")
require_relative("../drinks.rb")

class DrinkTest < MiniTest::Test

  def setup
    @drink = Drink.new("Buckfast Shot", 1.50)
  end

  def test_drink_name
    assert_equal("Buckfast Shot", @drink.drink_name())
  end

  def test_drink_price
    assert_equal(1.50, @drink.drink_price())
  end

end
