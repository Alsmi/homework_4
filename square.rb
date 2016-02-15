require './figure.rb'

class Square < Figure
	attr_accessor :x2, :y2, :x3, :y3, :x4, :y4, :s

	def initialize(name, x, y)
		super
		@s 	= 7
		@x2 = x
		@y2 = y+@s
		@x3 = x+@s
		@y3 = y+@s
		@x4 = x+@s
		@y4 = y
		 
	end

	def area
		ab = Math.sqrt((x2-point.x)**2+(y2-point.y)**2)
		bc = Math.sqrt((x3-x2)**2+(y3-y2)**2)
		cd = Math.sqrt((x4-x3)**2+(y4-y3)**2)
		ac = Math.sqrt((x4-point.x)**2+(y4-point.y)**2)
		puts "Площадь фигуры '#{name}' составляет: #{ab*bc}"
	end
	def perimeter
		ab = Math.sqrt((x2-point.x)**2+(y2-point.y)**2)
		bc = Math.sqrt((x3-x2)**2+(y3-y2)**2)
		cd = Math.sqrt((x4-x3)**2+(y4-y3)**2)
		ac = Math.sqrt((x4-point.x)**2+(y4-point.y)**2)
		puts "Периметр фигуры '#{name}' составляет: #{ab+bc+cd+ac}"
	end

	def properties
		ab = Math.sqrt((x2-point.x)**2+(y2-point.y)**2)
		bc = Math.sqrt((x3-x2)**2+(y3-y2)**2)
		cd = Math.sqrt((x4-x3)**2+(y4-y3)**2)
		ac = Math.sqrt((x4-point.x)**2+(y4-point.y)**2)
		puts
		puts "----------------------СВОЙСТВА ФИГУРЫ '#{name}'---------------------"
		puts
		puts "Координаты вершин фигуры '#{name}' ABCD: A(#{point.x}, #{point.y}), B(#{x2}, #{y2}), C(#{x3}, #{y3}), D(#{x4}, #{y4}),"
		puts
		puts "Длина сторон фигуры '#{name}' ABCD: AB=#{ab}, BC=#{bc}, AC=#{ac}, CD=#{cd}"
		puts
		puts area
		puts perimeter
		puts "----------------------------------------------------------"
	end
end
