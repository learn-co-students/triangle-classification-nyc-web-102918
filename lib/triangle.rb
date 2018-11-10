class Triangle
  attr_accessor:l1,:l2,:l3

  def initialize(l1,l2,l3)
    @l1=l1
    @l2=l2
    @l3=l3
  end

  class TriangleError < StandardError
  end

  def kind
      if self.l1 ==0 || self.l3 == 0 || self.l2 == 0
          raise TriangleError
      end
      if self.l1 < 0 || self.l2 < 0 || self.l3 <0
        raise TriangleError
      end
      if (self.l1 + self.l2 <= self.l3) || (self.l1 + self.l3 <= self.l2) || (self.l2 + self.l3 <= self.l1)
        raise TriangleError
      end
      if self.l1 == self.l2 && self.l3 == self.l2 && self.l1 == self.l3
        :equilateral
      elsif (self.l1 == self.l2 && (self.l3 != self.l1 && self.l3 != self.l1)) || (self.l1 == self.l3 && (self.l2 != self.l1 && self.l3 != self.l2)) || (self.l2 == self.l3 && (self.l1 != self.l2 && self.l1 != self.l3))
        :isosceles
      elsif self.l1 != self.l2 && self.l3 != self.l2 && self.l1 != self.l3
        :scalene
      end
    end

    # The sum of the lengths of any two sides of a triangle
    # always exceeds the length of the third side.
    # This is a principle known as the triangle inequality.



end
