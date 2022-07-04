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

func divisibleSumPairs(n: Int, k: Int, ar: [Int]) -> Int {
    // Write your code here
    var numPairs = 0
    for j in 1 ... n - 1 {
        for i in 0 ... j - 1 {
            if (ar[i] + ar[j]) % k == 0 {
                numPairs += 1
            }
        }
    }
    return(numPairs)
}

divisibleSumPairs(n: 6, k: 5, ar: [1,2,3,4,5,6])
