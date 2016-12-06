class Triangle

  attr_accessor :a, :b, :c

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if a == 0 && b == 0 && c == 0
      raise TriangleError
    elsif a < 0 || b < 0 || c < 0
      raise TriangleError
    elsif c >= (a + b) || a >= (b + c) || b >= (a + c)
      raise TriangleError
    elsif a == b && b == c
      :equilateral
    elsif b == c || a == c || a == b
      :isosceles
    elsif a != b && b != c
      :scalene
    end
  end

end

class TriangleError < StandardError
  
end
