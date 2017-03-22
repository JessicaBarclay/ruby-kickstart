# Remember you can test this code with
#   $ rake 2:1

# Write a program that reads in two integers typed on the keybaord
# and outputs their sum, difference, and product
# 
# Standard input will be like "9 2\n" and will expect you to print
# "11\n7\n18\n" to standard output.


def sum_difference_product
x , y = gets.split.map { |s| s.to_i }
puts x + y ; puts x - y ; puts x * y
end


=begin
	
Take two numbers as input, 'x , y' in this case - by calling '.gets'

'.split' will split the string into two seperate stings

call '.map' to invoke a block, where you replace each String object with an Integer using the '.to_i' method

Now simply output using 'puts' to get the sum, difference and product of the input ('x', 'y')
	
=end