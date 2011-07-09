class Fixnum
  def factors
    numbers, number, value = [], 2, self

    while value.even?
      value = value / number
      numbers << number
    end

    number += 1

    while number <= value
      if value % number == 0
        value = value / number
        numbers << number
      else
        number += 2
      end
    end

    return numbers
  end

  def palindrome?
    return palindrome = (self.to_s == self.to_s.reverse) ? (true) : (false)
  end

  def prime?
    return prime = (self.factors.delete_if{ |item| item == self }.length == 0) ? (true) : (false)
  end
end