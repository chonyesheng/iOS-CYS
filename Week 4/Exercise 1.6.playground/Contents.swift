import UIKit

func printHalfDiamondPattern() {
    let n = 4
    
    for i in 1...n {
        print(String(repeating: "*", count: i))
    }
    for i in (1..<n).reversed() {
        print(String(repeating: "*", count: i))
    }
}

printHalfDiamondPattern()
