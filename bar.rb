class Bar

attr_reader(:drinks_available, :till_ammount)


  def initialize(drinks_available, till_ammount)
    @drinks_available = drinks_available
    @till_ammount = till_ammount
  end

  def add_drink(drink_to_be_added_bar)
    @drinks_available.push(drink_to_be_added_bar)
  end

end
