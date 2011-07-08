class Fixnum
  def palindrome?
    if self.to_s == self.to_s.reverse
      return true
    else
      return false
    end
  end
end

value01, value02 = 999, 999
numbers = []

begin
  if (value01 * value02).palindrome?
    numbers << value01 * value02
  end

  value02 -= 1 if value01 == 101
  value01 = (value01 == 101) ? (999) : (value01 - 1)
end while value02 > 100

puts numbers.uniq.sort.last