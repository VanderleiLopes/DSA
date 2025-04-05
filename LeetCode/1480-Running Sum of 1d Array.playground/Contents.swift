import Foundation

// Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).
//
// Return the running sum of nums.

// Example 1:
//
// Input: nums = [1,2,3,4]
// Output: [1,3,6,10]
// Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].

// Example 2:
//
// Input: nums = [1,1,1,1,1]
// Output: [1,2,3,4,5]
// Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].

// Example 3:
//
// Input: nums = [3,1,2,10,1]
// Output: [3,4,6,16,17]

// O(n) approach
class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        var result: [Int] = []
        var sum = 0
        
        for num in nums {
            sum += num
            result.append(sum)
        }
        
        return result
    }
}

let test = Solution()
print(test.runningSum([3,1,2,10,1]))
