require_relative 'support/benchmark'
require_relative 'support/mathfunctions'

def find_the_prime_number limit
  primes, prime = [2], 3

  begin
    primes << prime if prime.prime?
    prime +=2
  end while primes.length < limit

  return primes.last
end

benchmark { find_the_prime_number 10001 }