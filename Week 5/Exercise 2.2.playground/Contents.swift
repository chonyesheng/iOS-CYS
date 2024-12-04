import UIKit

func countEvenOdd(start: Int, end: Int) -> (evenCount: Int, OddCount: Int) {
    
    var evenCount = 0
    var OddCount = 0
    
    for number in start...end {
        if number % 2 == 0 {
            evenCount += 1
        } else {
            oddCount += 1
        }
    }
    
    return (evenCount, OddCount)
}

let startNumber = 1
let endNumber = 10
let (evenCount, oddCount) = countEvenOdd (start: startNumber, end: endNumber)

print("Even numbers: \(evenCount), Odd numbers \(oddCount)")

