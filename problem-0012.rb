require_relative 'support/mathfunctions'

triangleNumber, triangleNumberLength, number, limit = 0, 0, 1, 20

startTime = Time.utc(*Time.new.to_a)

begin
  triangleNumber += number

  if triangleNumber.even?
    triangleNumberLength = triangleNumber.divisors.length
    break if triangleNumberLength >= limit
  end

  number += 1

end while triangleNumber > 0

endTime = Time.utc(*Time.new.to_a)

puts startTime
puts endTime
puts triangleNumber