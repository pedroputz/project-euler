require_relative 'support/mathfunctions'

limit, item, number1, number2, a, b, c = 1000, 0, 1, 2, 0, 0, 0

startTime = Time.utc(*Time.new.to_a)

while a+b+c != limit

  if (number1 + number2).odd? && (number1.divisors & number2.divisors).length == 1
    a = (number2 * number2) - (number1 * number1)
    b = 2 * (number2 * number1)
    c = (number2 * number2) + (number1 * number1)
  end

  if a+b+c > 1000
    number1 +=1
    number2 = number1 + 1
  else
    number2 += 1
  end

  break if number1 > limit

end

endTime = Time.utc(*Time.new.to_a)

puts startTime
puts endTime

puts a * b * c