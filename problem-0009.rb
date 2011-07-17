require_relative 'support/benchmark'
require_relative 'support/mathfunctions'

def abc_product
  limit, number1, number2, a, b, c = 1000, 1, 2, 0, 0, 0

  while a+b+c != limit

    if (number1 + number2).odd? && (number1.divisors & number2.divisors).length == 1
      multiplier = 0

      begin
        multiplier += 1
        a = (number2 * number2 - number1 * number1) * multiplier
        b = (2 * (number2 * number1)) * multiplier
        c = (number2 * number2 + number1 * number1) * multiplier
      end while (a+b+c) < 1000
    end

    if (a+b+c) / multiplier > 1000
      number1 +=1
      number2 = number1 + 1
    else
      number2 += 1
    end

  end

  return a * b * c
end


benchmark { abc_product }