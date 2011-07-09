class Fixnum
  def factors
    numbers, number, value = [], 2, self
    begin
      if value % number == 0
        value = value / number
        numbers << number
      else
        number += 1
      end
    end while number <= value

    return numbers
  end

  def prime?
    return prime = (self.factors.delete_if{ |item| item == self }.length == 0) ? (true) : (false)
  end
end