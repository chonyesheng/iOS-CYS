import UIKit

let year = 2024

if year % 4 == 0 {
    if year % 100 != 0 || year % 400 == 0 {
        print("Leap Year")
    }else{
        print("Not a Leap Year")
    }
}else{
    print("Not a Leap Year")
    }
