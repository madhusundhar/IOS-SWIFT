import Foundation

print("=== Task 3.2: Weekday Enum with Raw Values ===")

enum Weekday: Int {
    case monday = 1
    case tuesday
    case wednesday
    case thursday
    case friday
    case saturday
    case sunday
}

let today = Weekday.wednesday
print("Today is \(today), Raw Value: \(today.rawValue)")

let dayNumber = 5
if let createdDay = Weekday(rawValue: dayNumber) {
    print("Created weekday from raw value \(dayNumber): \(createdDay)")
} else {
    print("Invalid day number: \(dayNumber)")
}

if let invalidDay = Weekday(rawValue: 9) {
    print("Created: \(invalidDay)")
} else {
    print("Raw value 9 does not correspond to any valid Weekday.")
}
