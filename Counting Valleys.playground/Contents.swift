import Foundation

/*
 * Complete the 'countingValleys' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER steps
 *  2. STRING path
 */

func countingValleys(steps: Int, path: String) -> Int {
    // Write your code here
    var valleys = 0
    var altitude = 0
    for i in path {
        if i == "U" {
            altitude += 1
        } else if i == "D" {
            if altitude == 0 {
                valleys += 1
            }
            altitude -= 1
        }
    }
    return(valleys)
}
countingValleys(steps: 8, path: "UDDDUDUU")
