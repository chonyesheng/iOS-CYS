import UIKit

func printOddNumbers(start: Int, end: Int) {
    
    for number in start...end {
        if number % 2 != 0 {
            print(number)
        }
    }
}
