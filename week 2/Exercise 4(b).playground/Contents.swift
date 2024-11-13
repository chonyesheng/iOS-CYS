import UIKit

let numberString = "88.8"
if let numberAsDouble = Double(numberString) {
    print("The string \"\(numberString)\" was successfully converted to a Double: \(numberAsDouble)")
    
}else{
    print("The string \"\(numberString)\"coukld not be converted to a Double")
}
