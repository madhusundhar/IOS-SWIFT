/*
 * Unit 1: Basic Swift – Control Flow and Decision-Making Statements
 * Level 2: Intermediate
 * Task 1.9: Largest of Three Numbers Using Nested If
 * File: Task1_9_LargestOfThree.swift
 *
 * Objective:
 * Find the largest of three numbers using nested if statements.
 */

import Foundation

print("=== Task 1.9: Largest of Three Numbers (Nested If) ===")

let num1: Int = 42
let num2: Int = 89
let num3: Int = 67

var largest: Int

// Nested if logic to compare three numbers
if num1 >= num2 {
    if num1 >= num3 {
        largest = num1
    } else {
        largest = num3
    }
} else {
    if num2 >= num3 {
        largest = num2
    } else {
        largest = num3
    }
}

print("Numbers: \(num1), \(num2), \(num3)")
print("The largest number is: \(largest)")

// Function encapsulating the nested if decision tree
func findLargestNested(a: Int, b: Int, c: Int) -> Int {
    if a >= b {
        if a >= c {
            return a
        } else {
            return c
        }
    } else {
        if b >= c {
            return b
        } else {
            return c
        }
    }
}

print("\n--- Additional Test Cases ---")
let testCases: [(Int, Int, Int)] = [
    (100, 50, 25),    // 'a' is largest
    (15, 95, 40),     // 'b' is largest
    (10, 20, 80),     // 'c' is largest
    (50, 50, 20),     // 'a' and 'b' tied for largest
    (7, 7, 7),        // all three equal
    (-10, -5, -20)    // all negative numbers
]

for (a, b, c) in testCases {
    let result = findLargestNested(a: a, b: b, c: c)
    print("Inputs: (\(a), \(b), \(c)) -> Largest: \(result)")
}
