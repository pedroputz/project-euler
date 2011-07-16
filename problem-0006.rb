require_relative 'support/benchmark'

def difference_between_the_sum_of_the_squares_and_the_square_of_the_sum_up_to limit
  sumOfSquares, squareOfSum = 0, 0

  1.upto(100) { |number| sumOfSquares += number * number }
  1.upto(100) { |number| squareOfSum += number }

  return (squareOfSum * squareOfSum) - sumOfSquares
end

benchmark { difference_between_the_sum_of_the_squares_and_the_square_of_the_sum_up_to 100 }