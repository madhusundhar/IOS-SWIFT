import Foundation

print("=== Additional Task 1: Library Item Model ===")

// Step 1 & 2: Enum BookStatus with associated values and computed property label
enum BookStatus {
    case available
    case borrowed(by: String, dueInDays: Int)
    case reserved(for: String)

    var label: String {
        switch self {
        case .available:
            return "Available on shelf"
        case .borrowed(let member, let days):
            return "Borrowed by \(member), due in \(days) days"
        case .reserved(let member):
            return "Reserved for \(member)"
        }
    }
}

// Step 3: Struct Book with title and default status .available
struct Book {
    var title: String
    var status: BookStatus = .available
}

// Step 4: Class Member with name and borrowedBooks array
class Member {
    var name: String
    var borrowedBooks: [Book]

    init(name: String, borrowedBooks: [Book] = []) {
        self.name = name
        self.borrowedBooks = borrowedBooks
    }
}

// Step 5: Copy a Book (struct) into a second variable, change copy's status, and print both
print("\n--- Step 5: Struct Copy Demonstration (Value Type) ---")
var originalBook = Book(title: "The Swift Programming Language")
var copiedBook = originalBook
copiedBook.status = .borrowed(by: "Alice", dueInDays: 14)

print("Original Book: \"\(originalBook.title)\" -> Status: \(originalBook.status.label)")
print("Copied Book:   \"\(copiedBook.title)\" -> Status: \(copiedBook.status.label)")

// Step 6: Assign Member (class) to a second constant, change name through second constant, print both
print("\n--- Step 6: Class Shared Reference Demonstration (Reference Type) ---")
let member1 = Member(name: "Bob", borrowedBooks: [copiedBook])
let member2 = member1
member2.name = "Robert"

print("Member 1 name: \(member1.name)")
print("Member 2 name: \(member2.name)")
print("Both member1 and member2 reference the same instance: \(member1 === member2)")
