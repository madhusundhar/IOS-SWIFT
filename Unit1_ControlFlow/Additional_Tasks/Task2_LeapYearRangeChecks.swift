import Foundation

print("=== Task 2: Leap Year and Range Checks (Pure Expressions) ===")

let years = [1900, 2000, 2024, 2026]
for year in years {
    let isLeap = (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0)
    print("Is \(year) a leap year? -> \(isLeap)")
}

let numbers = [0, 1, 50, 100, 105]
for num in numbers {
    let inRange = (1...100).contains(num)
    print("Is \(num) in 1...100? -> \(inRange)")
}

let testValues = [2, 4, 10, 20, 24, 35]
for val in testValues {
    let condition = (val % 2 == 0) && (val % 10 != 0)
    print("Is \(val) even and not multiple of 10? -> \(condition)")
}

let nickname: String? = nil
print("User nickname: \(nickname ?? "Guest")")

let nickname2: String? = "SwiftCoder"
print("User nickname: \(nickname2 ?? "Guest")")
