# Describes a square with a given side length
#
#  Examples:
#
#    s = Sqaure.new(10)
#    s.side       #=> 10
#    s.area       #=> 100
#    s.perimeter  #=> 40
#
class Square

	def initialize(side)
		@side = side
	end

	def side
		@side
	end

	def area
		@side * @side
	end

	def perimeter
		4 * @side
	end
	
end
