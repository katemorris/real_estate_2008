require 'minitest/autorun'
require 'minitest/pride'
require './lib/room'
require './lib/house'

class RoomTest < Minitest::Test
  def test_it_exists
    # skip
    house = House.new("$400000", "123 sugar lane")

    assert_instance_of House, house
  end

  def test_attributes
    # skip
    house = House.new("$400000", "123 sugar lane")

    assert_equal 400000, house.price
    assert_equal "123 sugar lane", house.address
    assert_equal [], house.rooms
  end

  def test_adding_rooms
    # skip
    house = House.new("$400000", "123 sugar lane")

    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')

    house.add_room(room_1)
    house.add_room(room_2)
    assert_equal [room_1, room_2], house.rooms
  end

  def test_it_exists
    skip
    house = House.new("$400000", "123 sugar lane")

    assert_equal false, house.above_market_average?
  end

  def test_return_categorization_of_room
    skip
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)

    assert_equal [room_1, room_2], house.rooms_from_category(:bedroom)
    assert_equal [room_4], house.rooms_from_category(:basement)
  end

  def test_house_has_area
    skip
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, '13')
    room_2 = Room.new(:bedroom, 11, '15')
    room_3 = Room.new(:living_room, 25, '15')
    room_4 = Room.new(:basement, 30, '41')
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)

    assert_equal 1900, house.area
  end

  def test_house_has_details
    skip
    house = House.new("$400000", "123 sugar lane")

    assert_equal {"price" => 400000, "address" => "123 sugar lane"}, house.details
  end

end
