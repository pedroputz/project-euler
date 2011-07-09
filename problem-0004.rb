require_relative 'support/mathfunctions'

number01, number02 = 999, 999
palindromes = []

begin
  if (number01 * number02).palindrome?
    palindromes << number01 * number02
  end

  number02 -= 1 if number01 == 101
  number01 = (number01 == 101) ? (999) : (number01 - 1)
end while number02 > 100

puts palindromes.uniq.sort.last