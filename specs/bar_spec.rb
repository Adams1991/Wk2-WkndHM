require("minitest/autorun")
require_relative("../drinks.rb")
require_relative("../bar.rb")
require_relative("../rooms.rb")
require_relative("../guests.rb")

class BarTest < MiniTest::Test

  def setup
    @bar = Bar.new([
      {
      :drink_name=> "Vodka Shot",
      :drink_price => 3.00
      }],
      500)

      @drink = Drink.new({:drink_name => "Buckfast Shot", :drinks_price=> 1.50})
  end

  def test_drinks_available
    assert_equal([{:drink_name => "Vodka Shot", :drink_price=> 3.00}], @bar.drinks_available())
  end

  def test_till_ammount
    assert_equal(500, @bar.till_ammount())
  end

  def test_add_drink
    assert_equal([{
      :drink_name=> "Vodka Shot",
      :drink_price => 3.00
      },
      {:drink_name => "Buckfast Shot", :drinks_price=> 1.50}], @bar.add_drink(@drink.drink_details))
  end

  def test_remove_drink
    @bar.add_drink(@drink.drink_details)
    assert_equal([{
      :drink_name=> "Vodka Shot",
      :drink_price => 3.00
      }], @bar.remove_drink(@drink.drink_details))
  end


end
