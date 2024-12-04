import UIKit

func fizzBuzz(from start: Int, to end: Int) -> [String] {
    var result: [String] = []
    
    
    for number in start...end {
        if number % 3 == 0 && number % 5 == 0 {
            result.append("FizzBuzz")
        } else if number % 3 == 0 {
            result.append("Fizz")
        } else if number % 5 == 0 {
            result.append("Buzz")
        } else {
            result.append("\number)")
        }
    }
    
    return result
}

let fizzBuzzResult = fizzBuzz(from: 1 ,to: 20)
    for output in fizzBuzzResult {
    print(output)
}
            
