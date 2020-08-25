class Triangle
  attr_accessor :a, :b, :c, :equilateral, :scalene, :isosceles 

  def initialize(a, b, c)
    @a = a
    @b = b
    @c = c 
  end

  def kind
    inequality = @a + @b > @c && @b + @c > @a && @c + @a > @b

      if @a + @b < @c || @c + @b < @a || @a + @c < @b
        raise TriangleError
      elsif @a == 0 || @b == 0 || @c == 0
        raise TriangleError 
      elsif inequality != true
        raise TriangleError   
      elsif @a == @b && @b == @c
        :equilateral
      elsif @a != @b && @a != @c && @b != @c
        :scalene
      else
        :isosceles
      end
    end

  class TriangleError < StandardError
      def message
        "Dude, that's, like, not a triangle."
      end
  end
end
