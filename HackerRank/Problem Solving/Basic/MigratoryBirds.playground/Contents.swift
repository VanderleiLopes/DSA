import Foundation

/*
 * Complete the 'migratoryBirds' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

// O(n) approach
func migratoryBirds(arr: [Int]) -> Int {
    // dado um array de tipos de passaro, determine o mais frequente
    // se houver mais de 1, retorna o com menor valor
    
    // criar dict para contabilizar id / frequencia
    // retornar maior frequencia do dict, em caso de empate, retornar com menor id
    
    var dict: [Int: Int] = [:]
    
    for bird in arr {
        dict[bird, default: 0] += 1
    }
    
    var mostFrequent = 0
    var lowestBirdType = Int.max
    
    for (key, value) in dict {
        if value > mostFrequent {
            mostFrequent = value
            lowestBirdType = key
        } else if value == mostFrequent {
            if key < lowestBirdType {
                lowestBirdType = key
            }
        }
    }
    
    return lowestBirdType
}
