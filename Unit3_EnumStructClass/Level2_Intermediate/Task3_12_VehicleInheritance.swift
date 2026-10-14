import Foundation

print("=== Task 3.12: Vehicle Class Inheritance and Polymorphism ===")

class Vehicle {
    var name: String

    init(name: String) {
        self.name = name
    }

    func description() -> String {
        return "Vehicle: \(name)"
    }
}

class Car: Vehicle {
    var numberOfDoors: Int

    init(name: String, numberOfDoors: Int) {
        self.numberOfDoors = numberOfDoors
        super.init(name: name)
    }

    override func description() -> String {
        return "Car: \(name) (\(numberOfDoors) doors)"
    }
}

class Bike: Vehicle {
    var hasGear: Bool

    init(name: String, hasGear: Bool) {
        self.hasGear = hasGear
        super.init(name: name)
    }

    override func description() -> String {
        return "Bike: \(name) (\(hasGear ? "Geared" : "Non-geared"))"
    }
}

let fleet: [Vehicle] = [
    Car(name: "Honda City", numberOfDoors: 4),
    Bike(name: "Royal Enfield Classic 350", hasGear: true),
    Car(name: "Porsche 911", numberOfDoors: 2),
    Bike(name: "Activa 6G", hasGear: false),
    Vehicle(name: "Electric Cart")
]

for vehicle in fleet {
    print(vehicle.description())
}
