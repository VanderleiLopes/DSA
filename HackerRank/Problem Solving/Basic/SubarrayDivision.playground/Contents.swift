import Foundation

/*
 * Complete the 'birthday' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY s
 *  2. INTEGER d
 *  3. INTEGER m
 */

// O(NxM) sliding window approach
func birthday(s: [Int], d: Int, m: Int) -> Int {
    // inicializar ponteiros da esquerda e direita
    var leftPointer = 0
    var rightPointer = m - 1
    var count = 0
     
    // deslizar a janela enquanto o ponteiro da direita for menor que o count do array
    while rightPointer < s.count {
        var sum = 0
        // percorrer o array de valores da esquerda até a direita e somar
        for index in leftPointer...rightPointer {
            sum += s[index]
        }
        
        if sum == d {
            count += 1
        }
        
        leftPointer += 1
        rightPointer += 1
    }
    
    return count
}

// O(N) sliding window approach
func optimizedBirthday(s: [Int], d: Int, m: Int) -> Int {
    if s.count < m { return 0 }
    
    // ja inicio a janela de soma com o range inicial até m
    
    var windowSum = s[0..<m].reduce(0, +)
    var count = windowSum == d ? 1 : 0

    // percorrer apenas 1x o array S iniciando do m -> cada iteração remove 1 do inicio e adiciona 1 do final
    // ex: m = 3 s = [1,2,3,4,5,6,7,8,9]
    // ex: 1* loop = 2,3,4 = 9
    // ex: 2* loop = 3,4,5 = 12
    
    for index in m..<s.count {
        windowSum = windowSum - s[index - m] + s[index]
        
        if windowSum == d {
            count += 1
        }
    }
    
    return count
}
