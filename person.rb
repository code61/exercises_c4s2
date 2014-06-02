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
		@first_name = params[:name].split.first
		@last_name = params[:name].split[1..-1].join(' ')
		@dob = params[:dob]
	end

	def name
		[@first_name,@last_name].join(" ")
	end

	def dob
		@dob
	end

	def first_name
		@first_name 
	end

	def last_name
		@last_name 
	end

	def dob=(new_dob)
		@dob = new_dob
	end

	def first_name=(new_first_name)
		@first_name = new_first_name
	end

	def last_name=(new_last_name)
		@last_name = new_last_name
	end
end

