sequence = [1,2]
sum = 0

begin
  a,b = sequence.last(2)
  break if a + b > 4000000
  sequence << a + b
end while sequence.last < 4000000

sequence.each { |item| sum += item if item.even? }

puts sum
