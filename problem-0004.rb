require_relative 'support/benchmark'
require_relative 'support/mathfunctions'

def largest_palindrome_between number01, number02
  palindromes = []

  begin
    if (number01 * number02).palindrome?
      palindromes << number01 * number02
    end

    number02 -= 1 if number01 == 101
    number01 = (number01 == 101) ? (999) : (number01 - 1)
  end while number02 > 100

  return palindromes.uniq.sort.last
end

benchmark { largest_palindrome_between 999, 999 }