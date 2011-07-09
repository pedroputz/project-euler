require_relative 'support/mathfunctions'

primes, prime = [2], 3

begin
  primes << prime if prime.prime?
  prime +=2
end while primes.length < 10001

puts primes.last
