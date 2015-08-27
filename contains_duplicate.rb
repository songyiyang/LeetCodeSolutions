=begin
    Given an array of integers, find if the array contains any duplicates. Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.
=end


# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    if nums.nil?
        false
    else
        nums.uniq.length != nums.length
        # another_solution(nums)
    end
end


def another_solution(nums)
    hash = {}
    nums.each do |n|
        if hash[n]
            return true
        else
            hash[n] = 0
        end
    end
    false
end