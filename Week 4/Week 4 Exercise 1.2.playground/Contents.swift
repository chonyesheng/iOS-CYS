import UIKit

let number = 2534
let numberString = String(number)

var sum = 0

for char in numberString {
    if let digit = Int(String(char)) {
        sum += digit
    }
}

print("The sum of the digits of \(number) is \(sum)")
