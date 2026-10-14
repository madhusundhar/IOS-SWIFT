import Foundation

print("=== Task 3.17: Mini Project – Student Management System ===")

enum Grade: String {
    case aPlus = "A+"
    case a = "A"
    case b = "B"
    case c = "C"
    case fail = "Fail"

    static func calculate(marks: Double) -> Grade {
        switch marks {
        case 90...100: return .aPlus
        case 80..<90:  return .a
        case 70..<80:  return .b
        case 50..<70:  return .c
        default:       return .fail
        }
    }
}

struct Student {
    let id: Int
    let name: String
    let marks: Double

    var grade: Grade {
        return Grade.calculate(marks: marks)
    }
}

class School {
    let name: String
    private var students: [Student] = []

    init(name: String) {
        self.name = name
    }

    func addStudent(_ student: Student) {
        students.append(student)
        print("Enrolled: \(student.name) (ID: \(student.id), Marks: \(student.marks))")
    }

    func printReportSortedByMarks() {
        let sortedStudents = students.sorted { $0.marks > $1.marks }
        print("\n=== \(name) - Report Card (Sorted by Marks Descending) ===")
        print(String(format: "%-5@ | %-14@ | %-8@ | %-6@", "ID" as NSString, "Name" as NSString, "Marks" as NSString, "Grade" as NSString))
        print(String(repeating: "-", count: 40))
        for s in sortedStudents {
            print(String(format: "%-5d | %-14@ | %-8.1f | %-6@", s.id, s.name as NSString, s.marks, s.grade.rawValue as NSString))
        }
    }
}

let school = School(name: "Greenwood International Academy")
school.addStudent(Student(id: 101, name: "Aarav Sharma", marks: 94.5))
school.addStudent(Student(id: 102, name: "Diya Patel", marks: 82.0))
school.addStudent(Student(id: 103, name: "Rohan Gupta", marks: 68.5))
school.addStudent(Student(id: 104, name: "Pooja Verma", marks: 98.0))
school.addStudent(Student(id: 105, name: "Kabir Khan", marks: 45.0))

school.printReportSortedByMarks()
