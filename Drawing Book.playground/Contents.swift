import Foundation

/*
 * Complete the 'pageCount' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts following parameters:
 *  1. INTEGER n
 *  2. INTEGER p
 */

func pageCount(n: Int, p: Int) -> Int {
    // Write your code here
    var evenPage = 0
    var evenPage2 = 0
    if p % 2 != 0 {
        evenPage = p - 1
    } else {
        evenPage = p
    }
    if n % 2 == 0 {
        evenPage2 = n
    } else {
        evenPage2 = n - 1
    }
    let frontFlips = evenPage / 2
    let backFlips = (evenPage2 / 2) - frontFlips
    if frontFlips <= backFlips {
        return(frontFlips)
    } else {
        return(backFlips)
    }
}
