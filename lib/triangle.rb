class Triangle
  # write code here
  attr_accessor :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    sum1 = self.side_1 + self.side_2
    sum2 = self.side_2 + self.side_3
    sum3 = self.side_1 + self.side_3

    #Check that all sides are greater than 0
    #Check that the triangle inequality is satisfied

    if(self.side_1 <= 0 || self.side_2 <= 0 || self.side_3 <= 0 || sum1<=self.side_3 || sum2<=self.side_1 || sum3<=self.side_2 )
      
        raise TriangleError
      
    elsif (self.side_1 == self.side_2 && self.side_2 == self.side_3 && self.side_1 != 0)
        return :equilateral

      elsif (self.side_1==self.side_2 || self.side_1==self.side_3 || self.side_2 == self.side_3)
            return :isosceles
            
        else
          return :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "There are not valid sizes"
    end
  end

end

