require_relative 'support/benchmark'

def sum_of_the_digits_of_the_number
  total = 2
  numbersTotal = 0

  1.upto(999) { |number| total *= 2 }

  total.to_s.split(//).each { |number| numbersTotal += number.to_i }

  return numbersTotal
end

benchmark { sum_of_the_digits_of_the_number }