class Bar

attr_reader(:drinks_available, :till_ammount)


  def initialize(drinks_available, till_ammount)
    @drinks_available = drinks_available
    @till_ammount = till_ammount
  end

  def add_drink_details(drink_to_be_added_bar)
    @drinks_available.push(drink_to_be_added_bar)
  end


  def remove_drink_serving(drink_bought)

  drink_changed = @drinks_available.find {|drink| drink[:drink_name] == drink_bought}

  drink_changed[:amount_of_servings] -= 1

  return @drinks_available

  end

  def happy_hour
    @drinks_available.each {|drink| drink[:drink_price] = 0}

  end


end
