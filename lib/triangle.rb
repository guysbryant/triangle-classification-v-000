class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
    if a < 1 || b < 1 || c < 1
      raise TriangleError
    end
    @a = a
    @b = b
    @c = c
  end
  
  def kind
    if @a == @b && @b == @c
      return :equilateral
    end
    if @a != @b && @b != @c && @a != @c
      return :scalene
    end
    if @a == @b && @a != @c || @a == @c && @a != @b || @b == @c && @b != @a
      return :isosceles
    end
  end
  
  class TriangleError < StandardError
    
  end
end
