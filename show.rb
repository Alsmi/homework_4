current_path = "./" + File.dirname(__FILE__)

require current_path + '/circle.rb'
require current_path + '/square.rb'
require current_path + '/rectangle.rb'
require current_path + '/triangle.rb'
require current_path + '/triangle_rb.rb'
require current_path + '/triangle_rs.rb'

circle_1 = Circle.new('Окружность', 3, 4)
circle_1.properties
circle_1.pointIn(1, 0)

square = Square.new('Квадрат', 1, 1)
square.properties

rectangle = Rectangle.new('Прямоугольник', 1, 1)
rectangle.properties

triangle_1 = Triangle.new('Треугольник', 2, -5)
triangle_1.properties

triangle_rb = Triangle_RB.new('Равнобедренный треугольник', 0, 3)
triangle_rb.properties

triangle_rs = Triangle_RS.new('Равносторонний треугольник', 0, 0)
triangle_rs.properties
