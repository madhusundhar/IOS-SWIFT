/*
 * Unit 1: Basic Swift – Control Flow and Decision-Making Statements
 * Level 1: Simple
 * Task 1.2: Even or Odd
 * File: Task1_2_EvenOdd.swift
 *
 * Objective:
 * Write a program to check if a number is even or odd.
 */

import Foundation

print("=== Task 1.2: Check Even or Odd ===")

// Declare a number to test
var number: Int = 27

// Check if the number is divisible by 2 with no remainder
if number % 2 == 0 {
    print("\(number) is an EVEN number.")
} else {
    print("\(number) is an ODD number.")
}

// Function checking even/odd with both if-else and ternary operator
func evaluateEvenOdd(_ value: Int) {
    let result = (value % 2 == 0) ? "Even" : "Odd"
    print("Number: \(value) -> \(result)")
}

print("\n--- Additional Test Cases ---")
let testNumbers: [Int] = [0, 2, 7, 18, 99, -4, -7]
for testVal in testNumbers {
    evaluateEvenOdd(testVal)
}
