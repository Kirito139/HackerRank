
import Foundation

/*
 * Complete the 'hourglassSum' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts 2D_INTEGER_ARRAY arr as parameter.
 */

func hourglassSum(arr: [[Int]]) -> Int {
    var x = [0, 1, 2]
    var y = [0, 1, 2]
    var currentSum = 0
    var greatestSum = 0
    // Write your code here
    for _ in 0 ... 15 {
        for i in 0 ... 2 {
            if i != 1 {
                for j in 0 ... 2 {
                // print(x, y, j, i)
                currentSum += arr[y[i]][x[j]]
                print("add",arr[y[i]][x[j]])
                }
            } else {
                currentSum += arr[y[i]][x[1]]
                print("neck",arr[y[i]][x[1]])
            
            }
        }
        if x[2] == 5 {
            x = [0, 1, 2]
            // if y[2] != 5
            for i in 0 ... 2 {
                y[i] += 1
            }
        } else {
            for i in 0 ... 2 {
                x[i] += 1
            }
            
        }
        if currentSum > greatestSum {
            greatestSum = currentSum
        }
        print(currentSum, greatestSum)
        currentSum = 0
    }
    print(greatestSum)
    return greatestSum
}
hourglassSum(arr: [[1, 1, 1, 0, 0, 0], [0, 1, 0, 0, 0, 0], [1, 1, 1, 0, 0, 0], [0, 9, 2, -4, -4, 0], [0, 0, 0, -2, 0, 0], [0, 0, -1, -2, -4, 0]])
