require("minitest/autorun")
require_relative("../drinks.rb")

class DrinkTest < MiniTest::Test

  def setup
    @drink = Drink.new({:name => "Buckfast Shot", :price=> 1.50})
  end

  def test_drink_name
    assert_equal({:name => "Buckfast Shot", :price=> 1.50}, @drink.drink_details())
  end

end
