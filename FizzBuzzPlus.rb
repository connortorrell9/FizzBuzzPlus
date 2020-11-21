class FizzBuzzPlus

  def initialize
    @counter = 0
  end

  def multiple_of_three
    @counter % 3 == 0
  end

  def multiple_of_five
    @counter % 5 == 0
  end

  def contains_three
    @counter.to_s.include? "3"
  end

  def contains_five
    @counter.to_s.include? "5"
  end

  def answer
    @counter += 1
    output = ""
    if multiple_of_three
      output += "Fizz"
    end
    if multiple_of_five
      output += "Buzz"
    end
    if contains_three
      output += "Fizz"
    end
    if contains_five
      output += "Buzz"
    end
    if output == ""
      @counter
    else
      output
    end
  end
  
end