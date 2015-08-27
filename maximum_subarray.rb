=begin
	Find the contiguous subarray within an array (containing at least one number) which has the largest sum.

	For example, given the array [−2,1,−3,4,−1,2,1,−5,4],
	the contiguous subarray [4,−1,2,1] has the largest sum = 6.
=end

# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
    return nums[0] if nums.length == 1
    current_max = nums[0]
    nums.map!.with_index do |n, i|
        current_max = [(current_max + n), n].max if i > 0
        current_max
    end
    nums.max
end

# a = [2, 1, -3, 4, -1, 2, 1, -5, 4]
#  max_sub_array(a)
