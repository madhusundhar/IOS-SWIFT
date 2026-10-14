import Foundation

print("=== Task 3.16: Static Properties and Methods ===")

struct MathHelper {
    static func square(_ number: Double) -> Double {
        return number * number
    }
}

class Counter {
    static var totalInstancesCreated: Int = 0

    let instanceId: Int

    init() {
        Counter.totalInstancesCreated += 1
        self.instanceId = Counter.totalInstancesCreated
        print("Created Counter instance #\(instanceId)")
    }
}

print("Static MathHelper:")
print("  Square of 7.0:  \(MathHelper.square(7.0))")
print("  Square of 15.0: \(MathHelper.square(15.0))")

print("\nCreating Counter Instances:")
let counterA = Counter()
let counterB = Counter()
let counterC = Counter()

print("\nTotal Counter instances created so far: \(Counter.totalInstancesCreated)")
