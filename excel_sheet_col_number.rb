=begin
	Related to question Excel Sheet Column Title

	Given a column title as appear in an Excel sheet, return its corresponding column number.

	For example:

	    A -> 1
	    B -> 2
	    C -> 3
	    ...
	    Z -> 26
	    AA -> 27
	    AB -> 28
=end



# @param {String} s
# @return {Integer}
def title_to_number(s)
    alph = ("A".."Z").to_a
    res = 0
    s.split('').reverse.each_with_index do |l, index|
        res += (26 ** index) * (alph.index(l) + 1)
    end
    res
end