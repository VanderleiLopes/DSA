import Foundation

//Given an integer array nums of size n, return the number with the value closest to 0 in nums. If there are multiple answers, return the number with the largest value.

// O(n) approach
class Solution {
    func findClosestNumber(_ nums: [Int]) -> Int {
        var closest = Int.max
        var bestCandidate = 0

        for num in nums {
            let difference = abs(num) - 0

            if difference < closest {
                closest = difference
                bestCandidate = num
            } else if difference == closest {
                bestCandidate = max(bestCandidate, num)
            }
        }

        return bestCandidate
    }
}
