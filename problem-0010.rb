require_relative 'support/benchmark'
require_relative 'support/mathfunctions'
require 'mathn'

def answer
  sum = 0

  primes = 2000000.total_of_primes
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

benchmark { answer }
benchmark { ruby_answer }