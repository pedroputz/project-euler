value = 2000000
limit = Math.sqrt(value).to_i
primeNumbers, number, item, sum = [2], 3, 0, 0

puts Time.utc(*Time.new.to_a)

while number < value
  primeNumbers << number
  number +=2
end

while primeNumbers[item] <= limit
  prime = primeNumbers[item]
  primeNumbers.delete_if { |value| value > prime && value % prime == 0 }
  item += 1
end

primeNumbers.each { |value| sum += value }

puts Time.utc(*Time.new.to_a)
puts sum


puts Time.utc(*Time.new.to_a)
require 'mathn'
primesSum = 0

Prime.each(2000000) do |prime|
   primesSum += prime
end
puts Time.utc(*Time.new.to_a)
puts primesSum