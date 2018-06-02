require("minitest/autorun")
require_relative("../drinks.rb")
require_relative("../bar.rb")
require_relative("../rooms.rb")
require_relative("../guests.rb")

class BarTest < MiniTest::Test

  def setup
    @bar = Bar.new([
      {
      :drink_name => "Vodka Shot",
      :drink_price => 3.00, :amount_of_servings => 30}],
      500)


      @drink = Drink.new({:drink_name => "Buckfast Shot", :drinks_price=> 1.50, :amount_of_servings => 30})


  end

  def test_drinks_available
    assert_equal([{:drink_name => "Vodka Shot", :drink_price=> 3.00,:amount_of_servings => 30}], @bar.drinks_available())
  end

  def test_till_ammount
    assert_equal(500, @bar.till_ammount())
  end

  def test_add_drink_details
    assert_equal([{
      :drink_name=> "Vodka Shot",
      :drink_price => 3.00,:amount_of_servings => 30},
      {:drink_name => "Buckfast Shot", :drinks_price=> 1.50,:amount_of_servings => 30}], @bar.add_drink_details(@drink.drink_details))
  end

  def test_remove_drink_serving__drink_alteration
    assert_equal([
      {
      :drink_name => "Vodka Shot",
      :drink_price => 3.00,
      :amount_of_servings => 29}
      ], @bar.remove_drink_serving("Vodka Shot"))
  end

  def test_happy_hour
    assert_equal([
      {
      :drink_name => "Vodka Shot",
      :drink_price => 0,
      :amount_of_servings => 30}], @bar.happy_hour())
  end


end
