class Fixnum
  def divisors
    divisors, number, value, limit = [1, self], 2, self, self/2

    while number <= limit
      divisors << number if value % number == 0
      number += 1
    end

    return divisors.sort.uniq
  end

  def number_of_divisors
    divisors, number, value, limit = [1], 2, self, Math.sqrt(self).to_i

    while number <= limit
      divisors << number if value % number == 0
      number += 1
    end

    return divisors.length * 2
  end

  def palindrome?
    return palindrome = (self.to_s == self.to_s.reverse) ? (true) : (false)
  end

  def prime?
    return prime = (self.prime_factors.delete_if{ |item| item == self }.length == 0) ? (true) : (false)
  end

  def prime_factors
    primes, number, value = [], 2, self

    while value.even?
      value = value / number
      primes << number
    end

    number += 1

    while number <= value
      if value % number == 0
        value = value / number
        primes << number
      else
        number += 2
      end
    end

    return primes
  end

  def total_of_primes
    value = self
    limit = Math.sqrt(value).to_i
    primeNumbers, number, item, sum = [2], 3, 0, 0

    while number < value
      primeNumbers << number
      number +=2
    end

    while primeNumbers[item] <= limit
      prime = primeNumbers[item]
      primeNumbers.delete_if { |value| value > prime && value % prime == 0 }
      item += 1
    end

    return primeNumbers
  end
end