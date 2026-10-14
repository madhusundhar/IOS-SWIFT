/*
 * Unit 1: Basic Swift – Control Flow and Decision-Making Statements
 * Level 2: Intermediate
 * Task 1.15: FizzBuzz (Numbers 1 to 30)
 * File: Task1_15_FizzBuzz.swift
 *
 * Objective:
 * Print numbers 1–30.
 * - "Fizz" for multiples of 3.
 * - "Buzz" for multiples of 5.
 * - "FizzBuzz" for multiples of both.
 * - The number itself otherwise.
 */

import Foundation

print("=== Task 1.15: FizzBuzz (1 to 30) ===")

print("\n--- Output using Classic Condition Ordering ---")
for i in 1...30 {
    if i % 3 == 0 && i % 5 == 0 {
        print("\(i): FizzBuzz")
    } else if i % 3 == 0 {
        print("\(i): Fizz")
    } else if i % 5 == 0 {
        print("\(i): Buzz")
    } else {
        print("\(i): \(i)")
    }
}

print("\n--- Output using String Concatenation Pattern ---")
for i in 1...30 {
    var text = ""
    if i % 3 == 0 { text += "Fizz" }
    if i % 5 == 0 { text += "Buzz" }
    let result = text.isEmpty ? "\(i)" : text
    print("\(i) -> \(result)", terminator: (i % 5 == 0) ? "\n" : " \t")
}
print()
