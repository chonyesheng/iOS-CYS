import UIKit

func printHalfDiamondPattern(maxStar: Int) {
    let n = 4
    
    for i in 1...maxStar {
        print(String(repeating: "*", count: i))
    }
    for i in (1..<maxStar).reversed() {
        print(String(repeating: "*", count: i))
    }
     
}

let maxStar = 4
printHalfDiamondPattern(maxStar: maxStar)

