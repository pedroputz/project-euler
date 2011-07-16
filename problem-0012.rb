require_relative 'support/benchmark'
require_relative 'support/mathfunctions'


def triangle_number_with_divisors limit
  triangleNumber, triangleNumberLength, number = 0, 0, 1

  begin
    triangleNumber += number

    if triangleNumber.even?
      triangleNumberLength = triangleNumber.number_of_divisors
      break if triangleNumberLength >= limit
    end

    number += 1

  end while triangleNumber > 0

  return triangleNumber
end

benchmark { triangle_number_with_divisors 500 }