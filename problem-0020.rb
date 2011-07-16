require_relative 'support/benchmark'

def sum_of_the_digits_in_the_number
  total = 1
  numbersTotal = 0

  1.upto(100) { |number| total *= number }

  total.to_s.split(//).each { |number| numbersTotal += number.to_i }

  return numbersTotal
end

benchmark { sum_of_the_digits_in_the_number }