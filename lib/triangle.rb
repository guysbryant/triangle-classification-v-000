class Triangle
  attr_accessor :a, :b, :c
  
  def initialize(a, b, c)
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
    if @a == @b && @a != @c || @a == @c && @a !== @b
      return :isosceles
    end
  end
end
