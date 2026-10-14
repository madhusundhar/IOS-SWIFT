import Foundation

print("=== Task 3.14: Failable Initializer for Student Struct ===")

struct Student {
    var name: String
    var marks: Double

    // Failable initializer returning nil if marks are outside 0–100
    init?(name: String, marks: Double) {
        guard marks >= 0.0 && marks <= 100.0 else {
            return nil
        }
        self.name = name
        self.marks = marks
    }
}

// Test Case 1: Valid Marks (85.0)
if let student1 = Student(name: "Meera", marks: 85.0) {
    print("Successfully created student: \(student1.name), Marks: \(student1.marks)")
} else {
    print("Failed to initialize student1.")
}

// Test Case 2: Invalid Marks (105.0)
if let student2 = Student(name: "Rajesh", marks: 105.0) {
    print("Successfully created student: \(student2.name)")
} else {
    print("Initialization failed: Marks 105.0 is outside 0–100 range (returned nil).")
}

// Test Case 3: Invalid Marks (-15.0)
if let student3 = Student(name: "Tina", marks: -15.0) {
    print("Successfully created student: \(student3.name)")
} else {
    print("Initialization failed: Marks -15.0 is outside 0–100 range (returned nil).")
}
