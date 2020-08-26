class Room
  attr_reader :category, :painted

  def initialize(category, length, width)
    @category = category
    @length = length
    @width = width
  end

  def area
    @length * @width.to_i
  end

  def is_painted?
    if @painted == nil
      false
    else
      @painted
    end
  end

  def paint
    @painted = true
  end
end
