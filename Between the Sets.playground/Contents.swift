import Foundation

/*
 * Complete the 'getTotalX' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY a
 *  2. INTEGER_ARRAY b
 */

func getTotalX(a: [Int], b: [Int]) -> Int {
    // Write your code here
    var betweens = 0
    let largestNum = b[b.count-1]
    var numChecker = 0
    for int in 1...largestNum {
        for j in a {
            //            print(a[j])
            if int % j == 0 {
                numChecker += 1
                print(int, j)
            }
        }
        if numChecker == a.count {
            numChecker = 0
            for j in b {
                if j % int == 0 {
                    numChecker += 1
                    print(j, int)
                }
            }
            if numChecker == b.count {
                betweens += 1
            }
        }
        numChecker = 0
        //        print(int)
    }
    print(betweens)
    return(betweens)
}


