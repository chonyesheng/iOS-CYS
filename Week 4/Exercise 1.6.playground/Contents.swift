import UIKit

func printHalfDiamondPattern() {
    /*
    let n = 4
    
    for i in 1...n {
        print(String(repeating: "*", count: i))
    }
    for i in (1..<n).reversed() {
        print(String(repeating: "*", count: i))
    }
     */
}

func HalfDiamondPattern() {
    
    var num = 4
    
    for i in 1...num {
        print("*", terminated: "")
    }
    print("")
}
for i in 1...num-1 {
    for _ in 1...num-1 {
    print("*", terminated: "")
}
print("")
num -= 1
