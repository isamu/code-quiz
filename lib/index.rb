class Works
  class << self
    def quiz_name
      "not implement"
    end

    def all_models
      subclasses = []
      ObjectSpace.each_object(Works.singleton_class) do |k|
        subclasses << k if k.superclass == Works
      end
      subclasses
    end
  end

end

class Works1_FizzBuzz < Works
  class << self
    def quiz_name
      "FizzBuss"
    end

    def answers
      index = 0
      ret = [ 1, 2, "Fizz", 4, "Buzz", "Fizz", 7, 8, "Fizz", "Buzz",
        11, "Fizz", 13, 14, "FizzBuzz", 16, 17, "Fizz", 19, "Buzz",
        "Fizz", 22, 23, "Fizz", "Buzz", 26, "Fizz", 28, 29, "FizzBuzz",
        31, 32, "Fizz", 34, "Buzz"].map{|ans|
        index = index + 1
        { message: "args is " + index.to_s,
          test_args: [index],
          answar: ans
        }
      }
    end
  end
end

class Works2_Fibonacci < Works
  class << self
    def quiz_name
      "Fibonacci"
    end
  end
end
