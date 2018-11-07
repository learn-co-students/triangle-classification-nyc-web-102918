require "pry"

class Triangle

  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if self.side1 + self.side2 <= self.side3 || self.side1 + self.side3 <= side2 || self.side2 + self.side3 <= self.side1
      # raise TriangleError
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif self.side1 <= 0 || self.side2 <= 0 || self.side3 <= 0
      # raise TriangleError
      begin
        raise TriangleError
      rescue TriangleError => error
        puts error.message
      end
    elsif self.side1 == self.side2 && self.side1 == self.side3 && self.side2 == self.side3
      :equilateral
    elsif self.side1 == self.side2 || self.side1 == self.side3 || self.side2 == self.side3
      :isosceles
    elsif self.side1 != self.side2 && self.side1 != self.side3 && self.side2 != self.side3
      :scalene
    end
  end

  class TriangleError < StandardError
    # def message
    #   "Not a valid triangle."
    # end
  end

end

tri = Triangle.new(0,0,0)

binding.pry

puts 0
