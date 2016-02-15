require './triangle.rb'

class Triangle_RS < Triangle

	def initialize(name, x, y)
		super
		@x2 = 0.5
		@y2 = (Math.sqrt(3))/2
		@x3 = 1
		@y3 = 0
	end
end
