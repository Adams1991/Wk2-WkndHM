class Bar

attr_reader(:drinks_available)
attr_accessor(:till_ammount)


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

  def remove_guest_money_for_drink(guest, drink_bought)
    drink = @drinks_available.find {|drink| drink[:drink_name] == drink_bought}
    return if guest.guest_money <= drink[:drink_price]
    return guest.guest_money -= drink[:drink_price]
  end

  def add_money_to_till(drink_bought, bar)
    drink = @drinks_available.find {|drink| drink[:drink_name] == drink_bought}
    return bar.till_ammount += drink[:drink_price]
  end

  def add_room_till_to_bar_till(room)
    return @till_ammount += room.room_till()
  end


end
