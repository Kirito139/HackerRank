import Foundation

/*
 * Complete the 'breakingRecords' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY scores as parameter.
 */

func breakingRecords(scores: [Int]) -> [Int] {
    // Write your code here
    var recordsBroken = [0, 0]
    var highest = scores[0]
    var lowest = scores[0]
    for i in scores {
        if i > highest {
            highest = i
            recordsBroken[0] += 1
        } else if i < lowest {
            lowest = i
            recordsBroken[1] += 1
        }
    }
    print(recordsBroken)
    return(recordsBroken)
}

