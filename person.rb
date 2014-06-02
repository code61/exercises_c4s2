# Describes a person
#
# Examples:
#
#   p = Person.new(:name => "Bart Simpson", :dob => "15/1/1990")
#
#   p.name       #=> "Bart Simpson"
#   p.first_name #=> "Bart"
#   p.last_name  #=> "Simpson"
#   p.dob        #=> "15/1/1990"
#
class Person

	def initialize(params)
		@name = params[:name]
		@dob = params[:dob]
	end

	def name
		@name
	end

	def dob
		@dob
	end

	def first_name
		@name.split.first
	end

	def last_name
		# @name.spit.last
		@name.split[1..-1].join(' ')
	end

end
