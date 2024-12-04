import UIKit

func sumOfDigits(of number: Int) -> Int {
    let numberString = String (abs(number))
    var sum = 0
    
    for char in numberString {
        if let digit = char.wholeNumberValue {
            sum += digit
        }
    }
    
    return sum
}

let number = 2534
print("The sum of digits of \(number) is \(sumOfDigits(of: number))")
