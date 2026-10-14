/*
 * Unit 1: Basic Swift – Control Flow and Decision-Making Statements
 * Level 1: Simple
 * Task 1.6: Multiplication Table
 * File: Task1_6_MultiplicationTable.swift
 *
 * Objective:
 * Print the multiplication table of any number up to 10.
 */

import Foundation

print("=== Task 1.6: Multiplication Table ===")

let number: Int = 7

print("Multiplication Table for \(number):")
for i in 1...10 {
    let product = number * i
    print("\(number) x \(i) = \(product)")
}

// Function to print multiplication table for any given number
func printMultiplicationTable(for num: Int) {
    print("\n--- Multiplication Table for \(num) ---")
    for i in 1...10 {
        print(String(format: "%2d x %2d = %3d", num, i, num * i))
    }
}

printMultiplicationTable(for: 5)
printMultiplicationTable(for: 12)
