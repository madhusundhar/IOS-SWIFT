import Foundation

print("=== Task 1: Restaurant Bill Calculator ===")

let itemPrice: Double = 450.0
let quantity: Int = 3
let subtotal: Double = itemPrice * Double(quantity)

print("Item Price: ₹\(itemPrice)")
print("Quantity:   \(quantity)")
print("Subtotal:   ₹\(subtotal)")

let hasCoupon: Bool = true
let discountRate: Double = (hasCoupon && subtotal > 1000) ? 0.10 : 0.0
let discount: Double = subtotal * discountRate
let discountedAmount: Double = subtotal - discount

print("Discount:   ₹\(discount)")
print("Subtotal after discount: ₹\(discountedAmount)")

let gst: Double = discountedAmount * 0.18
let total: Double = discountedAmount + gst

print("GST (18%):  ₹\(gst)")
print("Total Bill: ₹\(total)")

let people: Int = 4
let share: Double = total / Double(people)
print("Share per person (\(people) people): ₹\(share)")

let amount: Int = 1234
let hundreds: Int = amount / 100
let remainder: Int = amount % 100
print("₹\(amount) = \(hundreds) hundreds and ₹\(remainder) remainder")
