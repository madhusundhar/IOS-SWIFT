/*
 * Unit 1: Basic Swift – Control Flow and Decision-Making Statements
 * Level 1: Simple
 * Task 1.1: Positive, Negative, or Zero
 * File: Task1_1_PositiveNegativeZero.swift
 *
 * Objective:
 * Declare an integer variable `number`. Print whether it is positive, negative, or zero.
 */

import Foundation

print("=== Task 1.1: Check Number Sign (Positive / Negative / Zero) ===")

// Declare an integer variable 'number'
var number: Int = 15

// Check whether the number is positive, negative, or zero using if / else if / else
if number > 0 {
    print("The number \(number) is positive.")
} else if number < 0 {
    print("The number \(number) is negative.")
} else {
    print("The number is zero.")
}

// Demonstrating with additional test values
print("\n--- Additional Test Cases ---")
let testNumbers: [Int] = [42, -18, 0, 100, -5]

for testNum in testNumbers {
    number = testNum
    if number > 0 {
        print("number = \(number): Positive")
    } else if number < 0 {
        print("number = \(number): Negative")
    } else {
        print("number = \(number): Zero")
    }
}
