require_relative 'support/benchmark'

def sum_of_all_the_multiples_of_3_or_5_below (limit)
  sum = 0

  3.upto(limit) do |number|
    sum += number if number % 3 == 0 || number % 5 == 0
  end

  return sum
end

benchmark { sum_of_all_the_multiples_of_3_or_5_below 999 }