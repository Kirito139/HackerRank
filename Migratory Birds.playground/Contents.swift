import Foundation

/*
 * Complete the 'migratoryBirds' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func migratoryBirds(arr: [Int]) -> Int {
    // Write your code here
    var smallestFrequentBirds = 0
    var IDs = [0, 0, 0, 0, 0]
    for i in arr {
        IDs[i - 1] += 1
    }
    for i in 1 ... IDs.endIndex {
        if IDs[i - 1] > smallestFrequentBirds {
            smallestFrequentBirds = i
        }
    }
    return smallestFrequentBirds
}
