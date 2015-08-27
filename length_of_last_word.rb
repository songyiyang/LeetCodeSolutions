=begin
	Given a string s consists of upper/lower-case alphabets and empty space characters ' ', return the length of last word in the string.

	If the last word does not exist, return 0.

	Note: A word is defined as a character sequence consists of non-space characters only.

	For example,
	Given s = "Hello World",
	return 5.
=end

# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    last = s.split(' ').last
    last ? last.length : 0
end
