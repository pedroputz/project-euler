require_relative 'support/benchmark'

def divisible_by_all_of_the_numbers
  number = 2520

  while number > 0 do
    number += 20
    if number % 19 == 0 && number % 18 == 0 && number % 17 == 0 && number % 16 == 0 && number % 14 == 0 && number % 13 == 0 && number % 11 == 0
      result = number
      break
    end
  end

  return result
end

benchmark { divisible_by_all_of_the_numbers }