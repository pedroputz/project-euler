require_relative 'support/mathfunctions'

puts Time.utc(*Time.new.to_a)

sum = 0
primes = 2000000.total_of_primes
primes.each { |value| sum += value }

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