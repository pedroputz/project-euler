require_relative 'support/benchmark'

def first_term_in_the_Fibonacci_sequence_to_contain_digits limit
  sequence = [1,1,2]
  sum = 0

  begin
    a,b = sequence.last(2)
    break if (a + b).to_s.size() > limit
    sequence << a + b
  end while sequence.last.to_s.size() < limit

  return sequence.size()
end

benchmark { first_term_in_the_Fibonacci_sequence_to_contain_digits 1000 }