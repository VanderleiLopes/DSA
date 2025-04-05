import Foundation

/*
 * Complete the 'divisibleSumPairs' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER k
 *  3. INTEGER_ARRAY ar
 */

// O(nxn) or O(n^2) approach
func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    var count = 0
    
    for i in 0..<n-1 {
        for j in i+1..<n {
            if ((ar[i] + ar[j]) % k) == 0 {
                count += 1
            }
        }
    }
    
    return count
}
