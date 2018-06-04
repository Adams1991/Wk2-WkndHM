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
      500.00)

      @guest = Guest.new("Bob", 45, "One Last Time")


      @drink = Drink.new({:drink_name => "Buckfast Shot", :drinks_price=> 1.50, :amount_of_servings => 30})

      @room = Room.new("Boogy Room", [], [], 10, 50.00)


  end

  def test_drinks_available
    assert_equal([{:drink_name => "Vodka Shot", :drink_price=> 3.00,:amount_of_servings => 30}], @bar.drinks_available())
  end

  def test_till_ammount
    assert_equal(500.00, @bar.till_ammount())
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

  def test_remove_guest_money_for_drink
    assert_equal(42, @bar.remove_guest_money_for_drink(@guest, "Vodka Shot"))
  end

  def test_add_money_to_till
    @bar.add_money_to_till("Vodka Shot", @bar)
    assert_equal(503.00, @bar.till_ammount())
  end

  def test_add_room_till_to_bar_till
    @bar.add_room_till_to_bar_till(@room)
    assert_equal(550.00, @bar.till_ammount())
  end

end
