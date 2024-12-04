import UIKit

func printAsterisks(for numbers: [Int]) {
    for number in numbers {
        for _ in 1...number {
            print("*", terminator: "")
        }
        
        print("")
    }
}

let numbers = [3,5,1,4]
printAsterisks(for: numbers)
