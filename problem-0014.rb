require_relative 'support/benchmark'

def number_for_longest_sequence_below limit
  number, tempSequence, longestSequence = 2, [], []

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

  return longestSequence.first
end

benchmark { number_for_longest_sequence_below 999999 }