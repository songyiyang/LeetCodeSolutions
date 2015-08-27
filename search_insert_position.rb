=begin
    Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

    You may assume no duplicates in the array.

    Here are few examples.
    [1,3,5,6], 5 → 2
    [1,3,5,6], 2 → 1
    [1,3,5,6], 7 → 4
    [1,3,5,6], 0 → 0
=end

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    res = nums.index(target)
    if res
        res
    else
        nums.each_with_index do |n, i|
            if n > target
                return i
            elsif (n < target && nums[i+1].nil?) || (n < target && nums[i+1] > target)
                return i + 1
            end
        end
    end
end