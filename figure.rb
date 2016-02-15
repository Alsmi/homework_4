class Point
	attr_accessor :x, :y
	
	def initialize(x, y)
		@x = x		
		@y = y
	end
end

class Figure
	attr_accessor :point, :x, :y
	attr_reader :name

	def initialize (name, x, y)
		@name = name
		@point = Point.new(x, y)
	end
end