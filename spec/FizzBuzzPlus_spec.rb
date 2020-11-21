require './FizzBuzzPlus'

def nth_answer(n)
  fizzbuzzplus = FizzBuzzPlus.new
  i = 1
  until i >= n
    fizzbuzzplus.answer
    i = i + 1
  end
  fizzbuzzplus.answer
end

describe "fizzbuzzplus" do
  context "1st call" do
    it "returns 1" do
      expect(nth_answer(1)).to eq(1)
    end
  end
  context "2nd call" do
    it "returns 2" do
      expect(nth_answer(2)).to eq(2)
    end
  end
  context "when called multiple-of-three times" do
    it "returns Fizz" do
      expect(nth_answer(3)).to include("Fizz")
      expect(nth_answer(6)).to include("Fizz")
      expect(nth_answer(9)).to include("Fizz")
    end
  end
  context "when called multiple-of-five times" do
    it "returns Buzz" do
      expect(nth_answer(5)).to include("Buzz")
      expect(nth_answer(10)).to include("Buzz")
      expect(nth_answer(20)).to include("Buzz")
    end
  end

  context "when called multiple-of-fifteen times" do
    it "returns FizzBuzz" do
      expect(nth_answer(15)).to include("FizzBuzz")
      expect(nth_answer(30)).to include("FizzBuzz")
      expect(nth_answer(45)).to include("FizzBuzz")
    end
  end

  context "when called numbers-including-three times" do
    it "returns Fizz" do
      expect(nth_answer(31)).to include("Fizz")
      expect(nth_answer(37)).to include("Fizz")
      expect(nth_answer(13)).to include("Fizz")
    end
  end

  context "when called numbers-including-five times" do
    it "returns Buzz" do
      expect(nth_answer(51)).to include("Buzz")
      expect(nth_answer(54)).to include("Buzz")
      expect(nth_answer(35)).to include("Buzz")
    end
  end
end