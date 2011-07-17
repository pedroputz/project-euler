require_relative 'support/benchmark'

def total_of_all_the_name_scores
  alphabet = ['A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z']
  names = File.open('extras/problem22.txt', 'r').readline.gsub('"', '').split(',').sort
  total = 0

  names.each do |name|
    word = 0
    name.split(//).each { |letter| word += (alphabet.index(letter) + 1) }
    total += (names.index(name) + 1) * word
  end

  return total
end

benchmark { total_of_all_the_name_scores }