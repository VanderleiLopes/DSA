import Foundation

// Given an integer array nums sorted in non-decreasing order, return an array of the squares of each number sorted in non-decreasing order.

class Solution {
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var left = 0
        var right = nums.count - 1
        var result = Array(repeating: 0, count: nums.count)
        var index = nums.count - 1
        
        while left <= right {
            let leftSquare = nums[left] * nums[left]
            let rightSquare = nums[right] * nums[right]
            
            if leftSquare > rightSquare {
                result[index] = leftSquare
                left += 1
            } else {
                result[index] = rightSquare
                right -= 1
            }
            
            index -= 1
        }
        
        return result
    }
}
