=begin
	Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.

	You may assume that the array is non-empty and the majority element always exist in the array.
=end

# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
    hash = {}
    nums.map{|n| hash[n] = hash[n].to_i + 1 }
    hash.key(hash.values.max)
end