=begin
    Given an array of n integers where n > 1, nums, return an array output such that output[i] is equal to the product of all the elements of nums except nums[i].

    Solve it without division and in O(n).

    For example, given [1,2,3,4], return [24,12,8,6].

    Follow up:
    Could you solve it with constant space complexity? (Note: The output array does not count as extra space for the purpose of space complexity analysis.)
=end

# @param {Integer[]} nums
# @return {Integer[]}
# 3n
def product_except_self(nums)
    product = nums.product
    #O(n), O(1)
    zero_count = nums.count{|n| n == 0 }
    #O(n), O(1)
    if zero_count == 0
        nums.map{|n| n = product / n}
    elsif zero_count == 1
        nums.map{|n| n = (n == 0 ? product : 0)}
    elsif zero_count > 1
        nums.map{|n| n = 0}
    end
end

class Array
    # O(n)
    def product
        self.inject{|product, n| (product = product * (n==0 ? 1 : n))}
    end
end
