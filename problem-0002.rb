require_relative 'support/benchmark'

def sum_of_the_even_terms_below limit
  sequence = [1,2]
  sum = 0

  begin
    a,b = sequence.last(2)
    break if a + b > limit
    sequence << a + b
  end while sequence.last < limit

  sequence.each { |item| sum += item if item.even? }

  return sum
end

benchmark { sum_of_the_even_terms_below 4000000 }