require "pry"
class Triangle
  attr_reader :valOne, :valTwo , :valThree
  attr_accessor :type
  def initialize(valOne, valTwo, valThree)
    @valOne = valOne
    @valTwo = valTwo
    @valThree = valThree
    @type = ""
  end

  class TriangleError < StandardError
    # def message
    #   "error"
    # end
  end

def kind

if valOne <= 0 || valTwo <=0 || valThree<=0 || valOne+valTwo <=valThree ||
 valOne+valThree <=valTwo || valThree+valTwo <=valOne
begin
  raise TriangleError

end
elsif valOne != valTwo && valOne != valThree && valThree != valTwo
  self.type = :scalene
elsif valOne == valTwo && valOne == valThree && valThree == valTwo
  self.type = :equilateral

elsif
  valOne == valTwo || valOne == valThree || valThree == valTwo
  self.type = :isosceles
elsif
  valOne != valTwo && valOne != valThree && valThree != valTwo
  self.type = :scalene

end



self.type
end

end

# tria = Triangle.new(2,2,2)
# tria.kind
# tria =  Triangle.new(1, 1, 1).kind
# binding.pry