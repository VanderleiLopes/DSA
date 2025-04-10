import Foundation

//You are given two strings word1 and word2. Merge the strings by adding letters in alternating order, starting with word1. If a string is longer than the other, append the additional letters onto the end of the merged string.
//Return the merged string.

// O(n+m) approach
class Solution {
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        var merged = ""
        
        var i = word1.startIndex
        var j = word2.startIndex
        
        while i < word1.endIndex && j < word2.endIndex {
            merged.append(word1[i])
            merged.append(word2[j])
            word1.formIndex(after: &i)
            word2.formIndex(after: &j)
        }
        
        if i < word1.endIndex {
            merged.append(contentsOf: word1[i..<word1.endIndex])
        }
        
        if j < word2.endIndex {
            merged.append(contentsOf: word2[j..<word2.endIndex])
        }
        
        return merged
    }
}

