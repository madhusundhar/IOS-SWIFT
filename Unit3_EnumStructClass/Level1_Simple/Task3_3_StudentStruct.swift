import Foundation

print("=== Task 3.3: Student Struct ===")

struct Student {
    var name: String
    var rollNumber: Int
    var marks: Double
}

let student1 = Student(name: "Aarav Sharma", rollNumber: 101, marks: 88.5)
let student2 = Student(name: "Diya Patel", rollNumber: 102, marks: 92.0)

print("Student 1 Details:")
print("  Name:        \(student1.name)")
print("  Roll Number: \(student1.rollNumber)")
print("  Marks:       \(student1.marks)")

print("\nStudent 2 Details:")
print("  Name:        \(student2.name)")
print("  Roll Number: \(student2.rollNumber)")
print("  Marks:       \(student2.marks)")
