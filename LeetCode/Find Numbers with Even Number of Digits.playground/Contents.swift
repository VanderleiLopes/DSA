import Foundation

//Given an array nums of integers, return how many of them contain an even number of digits.

class Solution {
    func findNumbers(_ nums: [Int]) -> Int {
        var result = 0
        
        for num in nums {
            var mutableNum = num
            var count = 0
            while mutableNum > 0 {
                count += 1
                mutableNum /= 10
            }
            
            if count % 2 == 0 {
                result += 1
            }
        }
        
        return result
    }
}
