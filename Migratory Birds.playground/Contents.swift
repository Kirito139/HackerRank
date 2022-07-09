import Foundation

/*
 * Complete the 'migratoryBirds' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER_ARRAY arr as parameter.
 */

func migratoryBirds(arr: [Int]) -> Int {
    // Write your code here
    var smallestFrequentBirdID = 1
    var IDs = [0, 0, 0, 0, 0]
    for id in arr {
        IDs[id - 1] += 1
    }
    for i in 1 ... 5 {
        if IDs[i - 1] > IDs[smallestFrequentBirdID - 1] {
            smallestFrequentBirdID = i
        }
    }
    return smallestFrequentBirdID
}

assert(4 == migratoryBirds(arr: [1, 4, 4, 4, 5, 3]))
assert(1 == migratoryBirds(arr: [4, 2, 1, 1, 3, 5, 4, 2, 3, 1]))
assert(2 == migratoryBirds(arr: [5, 4, 2]))
