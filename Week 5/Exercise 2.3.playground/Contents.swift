import UIKit

func multiplicationTable(n : Int) {
    if n < 0 {
        print("Please enter a positive number")
    } else {
        for i in 1...10 {
            let result = n * 1
            
            print("\(n) * \(i) = \(result)")
        }
    }
}

let number = 5
multiplicationTable(n : number)
