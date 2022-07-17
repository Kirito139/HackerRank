import Foundation

/*
 * Complete the 'sockMerchant' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER_ARRAY ar
 */

func sockMerchant(n: Int, ar: [Int]) -> Int {
    // Write your code here
    var pairs = 0
    var potentPairs = [Int()]
    for i in ar {
        for j in 0...potentPairs.endIndex - 1 {
            if potentPairs[j] == i {
                potentPairs.remove(at: j)
                pairs += 1
                break
            } else if j == potentPairs.endIndex - 1 {
                potentPairs.append(i)
            }
        }
    }
    return(pairs)
}
