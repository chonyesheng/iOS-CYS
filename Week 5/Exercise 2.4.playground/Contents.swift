import UIKit

func factorial(n: Int) -> Int {
    if n < 0 {
        print("factional is not defined for negative number.")
        return -1
    }
    
    var result = 1
    for i in 1...n {
        result *= i
    }
    
    return result
}

let number = 5

