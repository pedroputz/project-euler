class Fixnum
  def divisors
    divisors, number, value = [1], 2, self

    while number <= value/2
      divisors << number if value % number == 0
      number += 1
    end

    divisors << value

    return divisors.uniq.sort
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

    return numbers
  end
end