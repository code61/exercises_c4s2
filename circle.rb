# Describes a circle with given radius.
#
# Examples:
#
#   c = Circle.new(10)
#   c.radius        #=> 10
#   c.area          #=> 314.2
#   c.circumference #=> 62.84
#
class Circle
  def initialize(radius)
    @radius = radius
  end

  def radius
    @radius
  end

  # The area of a circle is pi*r*r
  def area
    3.142 * @radius * @radius
  end

  # The circumference of a circle is 2*pi*r
  def circumference
		3.142 * 2 * @radius 
  end
end
