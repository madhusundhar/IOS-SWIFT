import Foundation

print("=== Additional Task 2: Shapes and Areas ===")

// 1. Enum Shape with associated values and computed property area
enum Shape {
    case circle(radius: Double)
    case rectangle(width: Double, height: Double)
    case triangle(base: Double, height: Double)

    var area: Double {
        switch self {
        case .circle(let radius):
            return Double.pi * radius * radius
        case .rectangle(let width, let height):
            return width * height
        case .triangle(let base, let height):
            return 0.5 * base * height
        }
    }
}

let circle = Shape.circle(radius: 5.0)
let rectShape = Shape.rectangle(width: 4.0, height: 6.0)
let tri = Shape.triangle(base: 8.0, height: 5.0)

print(String(format: "Circle (r=5.0) area:       %.2f", circle.area))
print(String(format: "Rectangle (4x6) area:       %.2f", rectShape.area))
print(String(format: "Triangle (b=8, h=5) area:   %.2f", tri.area))

// 2. Struct Rectangle with perimeter and mutating scale(by:)
struct Rectangle {
    var width: Double
    var height: Double

    var perimeter: Double {
        return 2 * (width + height)
    }

    mutating func scale(by factor: Double) {
        width *= factor
        height *= factor
    }
}

// 3. Show that scaling a copy does not change the original
print("\n--- Value Type Mutation Test: Scaling Copy vs Original ---")
var originalRect = Rectangle(width: 10.0, height: 5.0)
var copyRect = originalRect

print("Before scaling:")
print("  Original: \(originalRect.width) x \(originalRect.height), Perimeter: \(originalRect.perimeter)")
print("  Copy:     \(copyRect.width) x \(copyRect.height), Perimeter: \(copyRect.perimeter)")

copyRect.scale(by: 2.0)

print("After scaling copy by 2.0:")
print("  Original (unchanged): \(originalRect.width) x \(originalRect.height), Perimeter: \(originalRect.perimeter)")
print("  Copy (scaled):        \(copyRect.width) x \(copyRect.height), Perimeter: \(copyRect.perimeter)")
