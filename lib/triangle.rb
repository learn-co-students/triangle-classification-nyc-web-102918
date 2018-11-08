require('pry')
class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(*sides)
    sides.each_with_index {|val,i| self.send(("side#{i+1}="),val)}
  end


  def kind
    if (side1+side2 <= side3 || side1+side3 <= side2 || side2+side3 <= side1 || side1 <= 0 || side2 <= 0 || side3 <= 0)
      begin
        raise TriangleError

      end
    elsif side1==side2 && side1==side3
       :equilateral
    elsif side1==side2 || side2==side3 || side1==side3
     :isosceles
    else
      :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "incorrect sides!"
    end
  end



end
