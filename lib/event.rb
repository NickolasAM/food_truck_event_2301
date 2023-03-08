class Event
  attr_reader :name,
              :food_trucks
  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end
  
  def food_truck_names
    @food_trucks.map do |food_truck|
      food_truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.select do |food_truck|
      food_truck.inventory.has_key?(item)
    end
  end

  def overstocked_items
    overstocked_items = []
    @food_trucks.each do |food_truck|
      food_truck.inventory.each do |item, quanity|
        food_trucks_selling_item = food_trucks_that_sell(item)
        total_quantity = food_trucks_selling_item.sum { |food_truck| food_truck.check_stock(item)}
        if food_trucks_selling_item.length > 1 && total_quantity > 50
          overstocked_items << item unless overstocked_items.include?(item)
        end
        # require'pry';binding.pry
      end
    end
    overstocked_items
  end 
end
