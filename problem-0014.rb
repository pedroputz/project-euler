number, limit, tempSequence, longestSequence = 2, 999999, [], []

startTime = Time.utc(*Time.new.to_a)

while number < limit
  tempSequence << number
  sequenceNumber = number

  while sequenceNumber > 1
    if sequenceNumber.odd?
      sequenceNumber = sequenceNumber * 3 + 1
    else
      sequenceNumber /= 2
    end
    tempSequence << sequenceNumber
  end

  longestSequence = tempSequence if longestSequence.length < tempSequence.length
  tempSequence = []
  number += 1
end

endTime = Time.utc(*Time.new.to_a)

puts startTime
puts endTime
puts longestSequence.first