=begin
	Given an array of integers, every element appears three times except for one. Find that single one.

	Note:
	Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
=end

# @param {Integer[]} nums
# @return {Integer}
def single_number(nums)
    (nums.uniq.inject(&:+) * 3 - nums.inject(&:+)) / 2
end
