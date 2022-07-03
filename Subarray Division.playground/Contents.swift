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

func birthday(s: [Int], d: Int, m: Int) -> Int {
    // Write your code here
    var segments = 0
    var currentSegSum = 0
    for i in 0 ... s.count - 1 {
        currentSegSum = 0
        //        checks if there are still enough squares in the bar to test
        if s.count - i >= m {
            //            adds m squares together
            for j in 0 ... m - 1 {
                currentSegSum += s[j + i]
            }
            if currentSegSum == d {
                segments += 1
            }
        } else {
            break
        }
    }
    print(segments)
    return segments
}
