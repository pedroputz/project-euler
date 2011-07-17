require_relative 'support/benchmark'
require_relative 'support/mathfunctions'

def sum_of_all_the_amicable_numbers_under limit
  number, numbers, total = 0, [], 0
  begin
    aSum, bSum = 0, 0
    number += 1

    a = number.divisors
    a.delete_at(a.length - 1) if a.length > 1
    a.each { |n| aSum += n }

    b = aSum.divisors
    b.delete_at(b.length - 1) if b.length > 1
    b.each { |n| bSum += n }

    if number == bSum && number != aSum
      numbers << number
      numbers << aSum
    end

  end while number < limit

  numbers.uniq.each { |n| total += n }

  return total
end

# sum_of_all_the_amicable_numbers_under 300

benchmark { sum_of_all_the_amicable_numbers_under 10000 }