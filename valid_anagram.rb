=begin
	Given two strings s and t, write a function to determine if t is an anagram of s.

	For example,
	s = "anagram", t = "nagaram", return true.
	s = "rat", t = "car", return false.

	Note:
	You may assume the string contains only lowercase alphabets.
=end

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_anagram(s, t)
    return false if s.nil? || t.nil?
    s.split('').sort == t.split('').sort
end
