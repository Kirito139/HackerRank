
import Foundation

/*
 * Complete the 'hourglassSum' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts 2D_INTEGER_ARRAY arr as parameter.
 */

func compute(x: Int , y: Int, arr: [[Int]]) -> Int {
    var currentSum = 0
//    for i in 0 ... 2 {
//        if i != 1 {
//            for j in 0 ... 2 {
//                 print(x, y, j, i)
//                currentSum += arr[y+i][x+j]
//                 print("add",arr[y[i]][x[j]])
//            }
//        } else {
//            currentSum += arr[y+i][x+1]
//             print("neck",arr[y[i]][x[1]])
            
//        }
//    }
    return arr[y][x] + arr[y][x+1] + arr[y][x+2] + arr[y+1][x+1] + arr[y+2][x] + arr[y+2][x+1] + arr[y+2][x+2]
}

func hourglassSum(arr: [[Int]]) -> Int {
    var x = 0
    var y = 0
    var greatestSum = 0
    var currentSum = 0
//     Write your code here
//     print(x,y)
    for i in 0 ... 15 {
        currentSum = compute(x: x, y: y, arr: arr)
        if x == 3 {
            x = 0
            y += 1
        } else {
            x += 1
        }
        if i == 0 {
            greatestSum = currentSum
        }
        if currentSum > greatestSum {
            greatestSum = currentSum
        }
    }
    print(greatestSum,"is the greatestSum")
    return greatestSum
}
//hourglassSum(arr: [[1, 1, 1, 0, 0, 0], [0, 1, 0, 0, 0, 0], [1, 1, 1, 0, 0, 0], [0, 9, 2, -4, -4, 0], [0, 0, 0, -2, 0, 0], [0, 0, -1, -2, -4, 0]])
hourglassSum(arr: [[-1, -1, -1, -1, -1, -1], [-1, -1, -1, -1, -1, -1], [-1, -1, -1, -1, -1, -1], [-1, -1, -1, -1, -1, -1], [-1, -1, -1, -1, -1, -1], [-1, -1, -1, -1, -1, -1]])
