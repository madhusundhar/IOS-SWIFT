import Foundation

print("=== Task 3.11: Value vs Reference Types ===")

// Struct: Value type (copied on assignment)
struct PointStruct {
    var x: Int
    var y: Int
}

// Class: Reference type (shared on assignment)
class PointClass {
    var x: Int
    var y: Int

    init(x: Int, y: Int) {
        self.x = x
        self.y = y
    }
}

// 1. Struct Demo (Value Type)
var structOriginal = PointStruct(x: 10, y: 20)
var structCopy = structOriginal
structCopy.x = 99

print("Struct Original: (\(structOriginal.x), \(structOriginal.y))")
print("Struct Copy:     (\(structCopy.x), \(structCopy.y))")

// 2. Class Demo (Reference Type)
let classOriginal = PointClass(x: 10, y: 20)
let classCopy = classOriginal
classCopy.x = 99

print("Class Original:  (\(classOriginal.x), \(classOriginal.y))")
print("Class Copy:      (\(classCopy.x), \(classCopy.y))")

/*
 * Explanation:
 * 1. Structs are value types: When `structOriginal` is assigned to `structCopy`,
 *    Swift makes an independent copy of all stored properties. Changing `structCopy.x`
 *    modifies only the copy; the original retains its value (10).
 *
 * 2. Classes are reference types: When `classOriginal` is assigned to `classCopy`,
 *    only the object reference (pointer) is copied. Both variables point to the exact same
 *    instance in memory. Therefore, mutating `classCopy.x` also mutates `classOriginal.x` (99).
 */
