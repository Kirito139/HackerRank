import Foundation

/*
 * Complete the 'dayOfProgrammer' function below.
 *
 * The function is expected to return a STRING.
 * The function accepts INTEGER year as parameter.
 */

func dayOfProgrammer(year: Int) -> String {
    // Write your code here
    var day256 = String()
    if year < 1918 {
        if year % 4 == 0 {
            day256 = "12.09." + String(year)
        } else {
            day256 = "13.09." + String(year)
        }
    } else if year > 1918 {
        if year % 400 == 0 || (year % 4 == 0 && year % 100 != 0) {
            day256 = "12.09." + String(year)
        } else {
            day256 = "13.09." + String(year)
        }
    } else {
        day256 = "26.09." + String(year)
    }
    return(day256)
}
