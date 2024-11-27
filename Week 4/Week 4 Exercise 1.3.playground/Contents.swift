import UIKit

let numbers = [12, 45, 2, 67, 33, 8, 99, 23]

var smallest = numbers[0]
var largest = numbers[0]

for number in numbers {
    if number < smallest {
        smallest = number
    }
    if number > largest {
        largest = number
    }
}

print("The smallest is \(smallest) ")
print("The largest is \(largest)")
