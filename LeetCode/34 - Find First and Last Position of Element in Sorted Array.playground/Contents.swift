import Foundation

//Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.
//If target is not found in the array, return [-1, -1].
//You must write an algorithm with O(log n) runtime complexity.

// O(logn) approach
class Solution {
    func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
        guard !nums.isEmpty else { return [-1, -1] }

        return [leftBinarySearch(nums, target), rightBinarySearch(nums, target)]
    }

    func leftBinarySearch(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1

        while left < right {
            var middle = left + (right - left) / 2

            if nums[middle] < target {
                left = middle + 1
            } else {
                right = middle
            }
        }

        return nums[left] == target ? left : -1
    }

    func rightBinarySearch(_ nums: [Int], _ target: Int) -> Int {
        var left = 0
        var right = nums.count - 1

        while left < right {
            var middle = left + (right - left + 1) / 2

            if nums[middle] > target {
                right = middle - 1
            } else {
                left = middle
            }
        }

        return nums[left] == target ? left : -1
    }
}
