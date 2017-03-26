# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}


def staircase(x)
	hash = {} # hash to be returned
	1.upto x do |curnt| 
		next if curnt.even? 
		all = Array.new(curnt) {|i| i + 1} # this is where [2] is created initially
    evens = all.select { |i| i.even? }
    hash[curnt] = evens
  end
  hash
end


# p staircase 1  # => {1 => []}
# p staircase 2  # => {1 => []}
# p staircase 3  # => {1 => [], 3 => [2]}
# p staircase 4  # => {1 => [], 3 => [2]}
# p staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}


=begin

Explained using this example:

# staircase(5)  # => {1 => [], 3 => [2], 5 =>[2, 4]}



looping with 1 upto i (see line 14)

'next if 1 is even', which it isn't, so here we don't move onto 2 we stick with 1 and go forwards...
line 16 creates a new array which contains curnt integer + 1. So it contains [2]
line 17 variable named evens set to equal the array of even numbers [2]
line 18 curnt number is passed to hash, hash is also set to equal evens (our array of even numbers)
line 20 returns our hash with odd numbers as keys, and even integers as value in an array 

=end