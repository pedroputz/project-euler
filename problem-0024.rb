require_relative 'support/benchmark'
require_relative 'support/mathfunctions'

def the_millionth_lexicographic_permutation_with_numbers values
   numbers, counter = [], 1
   total = (numbers.length - 1).factorial * numbers.length

   while numbers.lenght < total
     permutation values[counter], values.delete_at(1)
   end
end

def permutation number, numbers
  while numbers.lenght > 0
    number +=
  end
end

the_millionth_lexicographic_permutation_with_numbers [0, 1, 2]
# the_millionth_lexicographic_permutation_with_numbers [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]

# benchmark { total_of_all_the_name_scores }