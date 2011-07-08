sum = 0

1.upto(999) do |number|
  sum += number if number % 3 == 0 || number % 5 == 0
end

puts sum