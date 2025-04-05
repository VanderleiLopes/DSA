import Foundation

//Given two strings ransomNote and magazine, return true if ransomNote can be constructed by using the letters from magazine and false otherwise.
//
//Each letter in magazine can only be used once in ransomNote.

// O(n + m) approach
class Solution {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        var hashMap: [Character : Int] = [:]
        
        if ransomNote.count > magazine.count {
            return false
        }
        for char in magazine {
            hashMap[char, default: 0] += 1
        }
        
        for char in ransomNote {
            if let amount = hashMap[char], amount > 0 {
                hashMap[char] = amount - 1
            } else {
                return false
            }
        }
        return true
    }
}
