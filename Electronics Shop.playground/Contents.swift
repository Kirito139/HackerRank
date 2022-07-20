import Foundation

/*
 * Complete the getMoneySpent function below.
 */
func getMoneySpent(keyboards: [Int], drives: [Int], b: Int) -> Int {
    /*
     * Write your code here.
     */
    var highestPrice = Int()
    for keyboard in keyboards {
        for drive in drives {
            if keyboard + drive > highestPrice && keyboard + drive <= b {
                highestPrice = keyboard + drive
            }
        }
    }
    if highestPrice == 0 {
        return(-1)
    }
    return(highestPrice)
}
