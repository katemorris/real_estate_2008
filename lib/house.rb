class House
  attr_reader :price, :address, :rooms

  def initialize(price, address)
    @price = price[1..-1].to_i
    @address = address
    @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    @price > 500000
  end

  def rooms_from_category(category)
    @rooms.select { |room| room.category == category }
  end

  def area
    @rooms.reduce(0) { |total, room| total + room.area }
  end

  def details
    house_details = Hash.new
    house_details["price"] = @price
    house_details["address"] = @address
    return house_details
  end

  def price_per_square_foot
    (@price.to_f / self.area.to_f).round(2)
  end

  def rooms_sorted_by_area
    sorted = @rooms.sort_by { |room| room.area }
    sorted.reverse
  end
end
