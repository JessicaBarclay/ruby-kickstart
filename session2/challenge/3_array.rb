# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String

  def every_other_char
  	to_return = ""
  	each_char.with_index do |char, index|
  		to_return << char if index.even? # upend into 'to_return' if characters index is even
  	end
  		to_return # after looping, return 'to_return' to the user
  end

end



p "abcdefg".every_other_char