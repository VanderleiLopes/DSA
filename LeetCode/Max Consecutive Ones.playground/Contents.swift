import Foundation

// Given a binary array nums, return the maximum number of consecutive 1's in the array.

// O(n) approach
class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var maxCount = 0
        var currentCount = 0
        
        for num in nums {
            if num == 1 {
                currentCount += 1
            } else {
                maxCount = max(maxCount, currentCount)
                currentCount = 0
            }
        }
        
        maxCount = max(maxCount, currentCount)
        return maxCount
    }
}
