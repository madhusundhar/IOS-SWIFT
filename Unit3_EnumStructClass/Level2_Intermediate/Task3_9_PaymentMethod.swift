import Foundation

print("=== Task 3.9: PaymentMethod Enum with Associated Values ===")

enum PaymentMethod {
    case cash
    case card(number: String)
    case upi(id: String)
}

func processPayment(method: PaymentMethod, amount: Double) {
    switch method {
    case .cash:
        print("Payment of ₹\(amount) completed using CASH.")
    case .card(let number):
        let lastFour = number.suffix(4)
        print("Payment of ₹\(amount) completed using CARD ending in ****\(lastFour).")
    case .upi(let id):
        print("Payment of ₹\(amount) completed via UPI (ID: \(id)).")
    }
}

let payments: [(PaymentMethod, Double)] = [
    (.cash, 450.0),
    (.card(number: "4532891234567890"), 3200.0),
    (.upi(id: "rahul@okhdfcbank"), 850.0)
]

for (method, amount) in payments {
    processPayment(method: method, amount: amount)
}
