=begin
	Given an array of integers, every element appears twice except for one. Find that single one.

	Note:
	Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
=end

# @param {Integer[]} nums
# @return {Integer}
# def single_number(nums)
#     while nums.length > 1 do
#         n = nums.pop()
#         i = nums.index(n)
#         if i && i >= 0
#             nums.delete_at(i)
#         else
#             return n
#         end
#     end
#     nums.first
# end

# best solution
def single_number(nums)
    res = 0
    nums.map{|k| res = k ^ res }
    res
end