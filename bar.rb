class Bar

attr_reader(:drinks_available, :till_ammount)


  def initialize(drinks_available, till_ammount)
    @drinks_available = drinks_available
    @till_ammount = till_ammount
  end

  def add_drink(drink_to_be_added_bar)
    @drinks_available.push(drink_to_be_added_bar)
  end

  # def remove_drink(drink_to_remove_bar)
  #   return if @drinks_available.index() = nil
  #   drink_index = @drinks_available.index(drink_to_remove_bar)
  #   @drinks_available.delete_at(drink_index)
  # end

end
