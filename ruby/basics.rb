# If ruby is such a good citizen of the object oriented community then why is a print method lacking and do we have to failback to puts ??
str = 'Hello Ruby World'
name = 'peter'
puts str.upcase()


puts " Ruby starts at: " + str.index('Ruby').to_s()

i=0
while i < 5
  puts name
  i += 1
end

def tell_the_truth(options = {})
  if options[:profession] == :lawyer
    puts 'it could be believed that this is almost certainly not false.'
  else
    true
  end
end

tell_the_truth :profession => :lawyer
# computer will pick a random number between 1 and 20
target_number = rand(1..20)

# # prompt player for their guess
# puts "I'm thinking of a number between 1 and 20...can you guess it?"
# guess = 0
#
# # guess loop
# while guess != target_number
#   guess = gets.chomp.to_i
#
#   if guess > target_number
#     puts "Too high! Try again."
#   elsif guess < target_number
#     puts "Too low! Try again."
#   end
# end
#
# puts "Congrats, you guessed the number!"

# class Fixnum
#   def my_times
#     i = self
#     while i > 0
#       i -= 1
#       yield
#     end
#   end
# end
#
# 3.my_times {puts 'Rosy Rino'}
#
def print_odd_numbers
  (1..10).each do |num|
    yield(num) if num.odd?
  end
end

print_odd_numbers { |num| puts num }

# This example function will iterate through each element of the given array
# object and yield each element to the passed in block.
# The `yield` statement passes the local variables to the block and
# then waits for the block to finish executing before moving to the
# next iteration of the loop.

def iterate_array(arr)
  arr.each do |element|
    yield(element)
  end
end

# Usage example
example_array = [1, 2, 3, 4, 5]
iterate_array(example_array) { |element| puts element }


