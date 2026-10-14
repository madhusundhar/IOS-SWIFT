import Foundation

print("=== Additional Task 3: Compile Error and Identity ===")

/*
 -------------------------------------------------------------------------------
 Original Code Analysis:
 -------------------------------------------------------------------------------
 struct Counter {
     var value = 0
     mutating func increment() { value += 1 }
 }

 class Box {
     var value = 0
     func increment() { value += 1 }
 }

 let c = Counter()
 c.increment()   <-- COMPILE ERROR HERE: Cannot use mutating member on immutable value: 'c' is a 'let' constant

 let b = Box()
 b.increment()   <-- Valid! Classes are reference types.

 -------------------------------------------------------------------------------
 Why does line `c.increment()` fail?
 - Counter is a struct (a value type). When a struct instance is declared with
   `let`, all of its properties become immutable constants. A `mutating` method
   attempts to modify `self`, which is illegal on a `let` constant.

 Why does line `b.increment()` work?
 - Box is a class (a reference type). Declaring `let b` means the reference (the
   pointer to memory) cannot be changed to point to another Box instance. However,
   the internal mutable state (`var value`) of that object can still be modified.

 Fix:
 - Change `let c = Counter()` to `var c = Counter()`.
 -------------------------------------------------------------------------------
 */

struct Counter {
    var value = 0
    mutating func increment() {
        value += 1
    }
}

class Box {
    var value = 0
    func increment() {
        value += 1
    }
}

// 1. Corrected struct usage using `var`
var c = Counter()
c.increment()
print("Counter (struct) value after increment: \(c.value)")

// 2. Class usage with `let`
let b = Box()
b.increment()
print("Box (class) value after increment:     \(b.value)")

// 3. Using === (identity operator) to show that two class constants refer to the same object
let b1 = Box()
let b2 = b1
let b3 = Box()

print("\n--- Identity Comparison using === ---")
print("Does b1 === b2? -> \(b1 === b2) (Both point to the same Box in memory)")
print("Does b1 === b3? -> \(b1 === b3) (Separate Box instances with different memory addresses)")
