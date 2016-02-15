require './square.rb'

class Rectangle < Square
	attr_accessor :s2, :x3, :x4

	def initialize(name, x, y)
		super
		@s2 = 15
		@x3 = x+@s2
		@x4 = x+@s2
	end
end
