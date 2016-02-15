require './figure.rb'

class Triangle < Figure
	attr_accessor :x2, :y2, :x3, :y3

	def initialize(name, x, y)
		super
		@x2 = -6
		@y2 = 1
		@x3 = 6
		@y3 = -2
	end

	def perimeter
		p = (Math.sqrt((x2-point.x)**2+(y2-point.y)**2)+
		 Math.sqrt((x3-point.x)**2+(y3-point.y)**2)+
		 Math.sqrt((x3-x2)**2+(y3-y2)**2))
		puts "Периметр фигуры #{name} ABC составляет: #{p.round(2)}"
	end

	def side_length(xa, ya, xb, yb)
		if xa == point.x && ya == point.y && xb ==x2 && yb == y2
			ab = Math.sqrt((xb-xa)**2+(yb-ya)**2)
			puts "----------------------------------------------------------"
			puts "Длина стороны АВ составляет: #{ab.round(2)}"
			puts "----------------------------------------------------------"
		elsif xa == x2 && ya == y2 && xb ==x3 && yb == y3
			bc = Math.sqrt((xb-xa)**2+(yb-ya)**2)
			puts "----------------------------------------------------------"
			puts "Длина стороны BC составляет: #{bc.round(2)}"
			puts "----------------------------------------------------------"
		elsif xa == point.x && ya == point.y && xb ==x3 && yb == y3
			ac = Math.sqrt((xb-xa)**2+(yb-ya)**2)
			puts "----------------------------------------------------------"
			puts "Длина стороны AC составляет: #{ac.round(2)}"
			puts "----------------------------------------------------------"
		else
			puts "----------------------------------------------------------"
			puts "Вы ввели неверные координаты точек заданного треугольника!"
			puts "----------------------------------------------------------"
		end
	end

	def area
		ab = Math.sqrt((x2-point.x)**2+(y2-point.y)**2)
		bc = Math.sqrt((x3-x2)**2+(y3-y2)**2)
		ac = Math.sqrt((x3-point.x)**2+(y3-point.y)**2)
		p = (Math.sqrt((x2-point.x)**2+(y2-point.y)**2)+
		 Math.sqrt((x3-point.x)**2+(y3-point.y)**2)+
		 Math.sqrt((x3-x2)**2+(y3-y2)**2))
		s = Math.sqrt((p / 2)*((p / 2) - ac)*((p / 2) - ab)*((p / 2) - bc))
		puts "Площадь фигуры '#{name}' составляет: #{s.round(2)}"
	end

	def properties
		ab = Math.sqrt((x2-point.x)**2+(y2-point.y)**2)
		bc = Math.sqrt((x3-x2)**2+(y3-y2)**2)
		ac = Math.sqrt((x3-point.x)**2+(y3-point.y)**2)
		puts
		puts "----------------------СВОЙСТВА ФИГУРЫ '#{name}'---------------------"
		puts
		puts "Координаты вершин фигуры '#{name}' ABC: A(#{point.x}, #{point.y}), B(#{x2}, #{y2}), C(#{x3}, #{y3})),"
		puts
		puts "Длины сторон фигуры '#{name}' ABC: AB=#{ab.round(2)}, BC=#{bc.round(2)}, AC=#{ac.round(2)}"
		puts
		puts area
		puts perimeter
		puts "----------------------------------------------------------"
	end
end


