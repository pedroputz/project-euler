total = 1
numbersTotal = 0

1.upto(100) { |number| total *= number }

total.to_s.split(//).each { |number| numbersTotal += number.to_i }

puts numbersTotal
