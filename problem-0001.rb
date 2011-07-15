require_relative 'support/benchmark'

def answer
  sum = 0

  3.upto(999) do |number|
    sum += number if number % 3 == 0 || number % 5 == 0
  end

  return sum
end

benchmark { answer }