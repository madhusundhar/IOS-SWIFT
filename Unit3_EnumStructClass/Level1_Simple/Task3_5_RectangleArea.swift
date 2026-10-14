import Foundation

print("=== Task 3.5: Rectangle Area Computed Property ===")

struct Rectangle {
    var width: Double
    var height: Double

    var area: Double {
        return width * height
    }
}

let rect1 = Rectangle(width: 8.0, height: 5.0)
let rect2 = Rectangle(width: 12.5, height: 4.0)

print("Rectangle 1 (width: \(rect1.width), height: \(rect1.height)) -> Area: \(rect1.area)")
print("Rectangle 2 (width: \(rect2.width), height: \(rect2.height)) -> Area: \(rect2.area)")
