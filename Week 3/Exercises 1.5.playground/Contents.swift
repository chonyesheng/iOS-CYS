import UIKit

let username = "ys"
let password = "1234567"

let inputUsername = "ys"
let inputPassword = "1234567"

if inputUsername == username {
    if inputPassword == password {
        print("Login Successfully!!")
    }else{
        print("Invalid Password!!")
    }
}else{
    print("Invalid Username!!")
}
