sumOfSquares, squareOfSum = 0, 0

1.upto(100) { |number| sumOfSquares += number * number }
1.upto(100) { |number| squareOfSum += number }

puts (squareOfSum * squareOfSum) - sumOfSquares