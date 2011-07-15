require_relative 'support/benchmark'
require_relative 'support/mathfunctions'
require 'mathn'

def sum_of_all_the_primes_below limit
  sum = 0

  primes = limit.total_of_primes
  primes.each { |value| sum += value }

  return sum
end

def ruby_answer
  primesSum = 0

  Prime.each(2000000) do |prime|
     primesSum += prime
  end

  return primesSum
end

benchmark { sum_of_all_the_primes_below 2000000 }
benchmark { ruby_answer }