value = 2000000
limit = Math.sqrt(value).to_i
numbers, position, sum = [], 0, 0

2.upto(value) do |number|
  numbers << number
end

begin
  numbers.delete_if { |item| item > numbers[position] && item % numbers[position] == 0 }
  position += 1
end while numbers[position] <= limit

numbers.each { |item| sum += item }

puts sum