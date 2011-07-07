total = 2
numbersTotal = 0

1.upto(999) { |number| total *= 2 }

total.to_s.split(//).each { |number| numbersTotal += number.to_i }

puts total
puts numbersTotal
