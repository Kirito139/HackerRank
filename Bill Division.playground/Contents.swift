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
    print(bill[0 ... bill.endIndex-1])
    print(k)
    print(b)
    var total = 0
    for i in bill {
        total += i
    }
    if total - k == b {
        print("Bon Appetit")
    } else {
        print(b - (total - bill[k]))
    }
}
bonAppetit(bill: [3, 10, 2, 9], k: 1, b: 12)
