class Restaurant
  attr_reader :opening_time, :name, :dishes, :menu_dishes
  def initialize(opening_time, name)
   @opening_time = opening_time
   @name = name
   @dishes = []
   @menu_dishes = []
  end

  def closing_time(hours)
    @opening_time += hours
    #conversion from military time string to integer?
  end

  def add_dish(dish)
    @dishes << dish
  end

  def menu_dish_names
    @dishes.each do |dish|
      @menu_dishes << dish.upcase
    end
    @menu_dishes
  end

  def open_for_lunch?
#again, converting opening time to an integer
    if @opening_time <= 12
      true
    else
      false
    end
  end

end
