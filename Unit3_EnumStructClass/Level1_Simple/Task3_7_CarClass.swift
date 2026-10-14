import Foundation

print("=== Task 3.7: Car Class with Accelerate and Brake ===")

class Car {
    let brand: String
    var speed: Double

    init(brand: String, speed: Double = 0.0) {
        self.brand = brand
        self.speed = speed
    }

    func accelerate(by amount: Double) {
        speed += amount
        print("\(brand) accelerated by \(amount) km/h. Current speed: \(speed) km/h")
    }

    func brake(by amount: Double) {
        speed = max(0.0, speed - amount)
        print("\(brand) braked by \(amount) km/h. Current speed: \(speed) km/h")
    }
}

let car = Car(brand: "Hyundai", speed: 40.0)
print("Initial speed of \(car.brand): \(car.speed) km/h")

car.accelerate(by: 35.0)
car.accelerate(by: 20.0)
car.brake(by: 45.0)
car.brake(by: 60.0)
