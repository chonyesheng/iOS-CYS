import UIKit

func findMinAndMax(in numbers: [Int]) -> (smallest: Int, largest: Int)? {
    guard !numbers.isEmpty else { return nil }
    
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
    
    return (smallest, largest)
}
    
    let numbers = [12, 45, 2, 67, 33, 8, 99, 223]
    
    if let result = findMinAndMax(in: numbers) {
        print("The smallest is \(result.smallest) ")
        print("The largest is \(result.largest)")
    } else {
        print("The numbers is empty")
    }


