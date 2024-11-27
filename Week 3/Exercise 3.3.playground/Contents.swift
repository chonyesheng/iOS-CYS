import UIKit

var shippingAddress: String? = nil
let shippingMessage = shippingAddress != nil ? "Shipping to: \(shippingAddress!)" : "No shipping address provided"
print(shippingMessage)
