import Foundation

print("=== Task 3.13: Property Observer (didSet) on Salary ===")

class Employee {
    let name: String
    var salary: Double {
        didSet {
            let difference = salary - oldValue
            print("Salary update for \(name):")
            print("  Old Salary: ₹\(oldValue)")
            print("  New Salary: ₹\(salary)")
            print("  Change:     \(difference >= 0 ? "+" : "")₹\(difference)")
        }
    }

    init(name: String, salary: Double) {
        self.name = name
        self.salary = salary
    }
}

let emp = Employee(name: "Vikram Malhotra", salary: 65000.0)
print("Initial salary for \(emp.name): ₹\(emp.salary)\n")

emp.salary = 72000.0
print()
emp.salary = 80000.0
