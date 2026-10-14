import Foundation

print("=== Task 3.4: Student isPassed() Method ===")

struct Student {
    var name: String
    var rollNumber: Int
    var marks: Double

    func isPassed() -> Bool {
        return marks >= 40.0
    }
}

let student1 = Student(name: "Rohan Gupta", rollNumber: 103, marks: 74.0)
let student2 = Student(name: "Pooja Verma", rollNumber: 104, marks: 35.5)

print("Student: \(student1.name) | Marks: \(student1.marks) | Result: \(student1.isPassed() ? "PASSED" : "FAILED")")
print("Student: \(student2.name) | Marks: \(student2.marks) | Result: \(student2.isPassed() ? "PASSED" : "FAILED")")
