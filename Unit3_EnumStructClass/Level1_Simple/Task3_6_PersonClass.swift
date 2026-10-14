import Foundation

print("=== Task 3.6: Person Class with Initializer and Method ===")

class Person {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func introduce() {
        print("Hello, my name is \(name) and I am \(age) years old.")
    }
}

let person1 = Person(name: "Kavya", age: 21)
let person2 = Person(name: "Arjun", age: 24)

person1.introduce()
person2.introduce()
