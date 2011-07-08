number = 2520
result = 0

while number > 0 do
  number += 20
  if number % 19 == 0 && number % 18 == 0 && number % 17 == 0 && number % 16 == 0 && number % 14 == 0 && number % 13 == 0 && number % 11 == 0
    result = number
    break
  end
end

puts result

#1
#16 8 4 2
#18 12 9 6 3
#20 15 10 5
#14 7
#11
#13
#17
#19