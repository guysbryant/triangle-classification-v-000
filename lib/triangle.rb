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
    if @a
  end
end
