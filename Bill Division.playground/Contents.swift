import Foundation

/*
 * Complete the 'bonAppetit' function below.
 *
 * The function accepts following parameters:
 *  1. INTEGER_ARRAY bill
 *  2. INTEGER k
 *  3. INTEGER b
 */

func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
    // Write your code here
   
    var total = 0
    for i in bill {
        total += i
    }
    if (total - bill[k]) / 2 == b {
        print("Bon Appetit")
    } else {
        print(b - (total - bill[k])/2)
    }
}
