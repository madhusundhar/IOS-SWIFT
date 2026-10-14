/*
 * Unit 1: Basic Swift – Control Flow and Decision-Making Statements
 * Level 1: Simple
 * Task 1.7: Larger of Two Numbers (Ternary Operator)
 * File: Task1_7_TernaryOperator.swift
 *
 * Objective:
 * Use the ternary operator to find the larger of two numbers.
 */

import Foundation

print("=== Task 1.7: Larger of Two Numbers (Ternary Operator) ===")

let a: Int = 45
let b: Int = 78

// Using ternary operator to find the larger number
let larger = (a > b) ? a : b
print("Between \(a) and \(b), the larger number is \(larger).")

// Reusable function to find the maximum
func findLarger(num1: Int, num2: Int) -> Int {
    return (num1 > num2) ? num1 : num2
}

print("\n--- Additional Test Pairs ---")
let testPairs: [(Int, Int)] = [
    (10, 20),
    (99, 12),
    (-15, -3),
    (-50, 5),
    (100, 100)
]

for (x, y) in testPairs {
    let maxVal = findLarger(num1: x, num2: y)
    if x == y {
        print("x: \(x), y: \(y) -> Both numbers are equal (\(x)).")
    } else {
        print("x: \(x), y: \(y) -> Larger: \(maxVal)")
    }
}
