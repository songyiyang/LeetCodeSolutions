=begin
    Given a positive integer, return its corresponding column title as appear in an Excel sheet.

    For example:

        1 -> A
        2 -> B
        3 -> C
        ...
        26 -> Z
        27 -> AA
        28 -> AB

=end

# @param {Integer} n
# @return {String}
def convert_to_title(n)
    alph = ("A".."Z").to_a
    res = []
    loop do
        m = n % 26
        m = 26 if m == 0
        n = (n - m) / 26
        res << alph[m-1]
        break if n == 0
    end
    res.reverse.join()
end
