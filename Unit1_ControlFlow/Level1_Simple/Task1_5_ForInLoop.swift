/*
 * Unit 1: Basic Swift – Control Flow and Decision-Making Statements
 * Level 1: Simple
 * Task 1.5: For-In Loop
 * File: Task1_5_ForInLoop.swift
 *
 * Objective:
 * Use a for-in loop to print the numbers 1 to 10.
 */

import Foundation

print("=== Task 1.5: Print Numbers 1 to 10 using a For-In Loop ===")

// Loop through the closed range 1 through 10
for number in 1...10 {
    print("Number: \(number)")
}

// Additional demonstration: Printing horizontally on a single line
print("\nPrinted horizontally on one line:")
for number in 1...10 {
    print("\(number)", terminator: (number < 10) ? ", " : "\n")
}
