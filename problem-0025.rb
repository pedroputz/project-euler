sequence = [1,1,2]
sum = 0

begin
  a,b = sequence.last(2)
  break if (a + b).to_s.size() > 1000
  sequence << a + b
end while sequence.last.to_s.size() < 1000

puts sequence.size()
