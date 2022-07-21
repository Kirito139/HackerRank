import Foundation

// Complete the catAndMouse function below.
func catAndMouse(x: Int, y: Int, z: Int) -> String {
    if abs(x - z) < abs(y - z) {
        return("Cat A")
    } else if abs(x - z) > abs(y - z) {
        return("Cat B")
    } else {
        return("Mouse C")
    }
}
