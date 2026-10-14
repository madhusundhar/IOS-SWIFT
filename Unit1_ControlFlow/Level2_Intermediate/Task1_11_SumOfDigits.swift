/*
 * Unit 1: Basic Swift – Control Flow and Decision-Making Statements
 * Level 2: Intermediate
 * Task 1.11: Sum of Digits Using While Loop
 * File: Task1_11_SumOfDigits.swift
 *
 * Objective:
 * Calculate the sum of digits of a number (e.g., 1234 -> 10) using a while loop.
 */

import Foundation

print("=== Task 1.11: Sum of Digits (While Loop) ===")

let inputNumber: Int = 1234

var temp: Int = abs(inputNumber)
var sumOfDigits: Int = 0

print("Calculating sum of digits for \(inputNumber):")
while temp > 0 {
    let digit = temp % 10
    sumOfDigits += digit
    print("  Extracted digit: \(digit), Running Sum: \(sumOfDigits), Remaining: \(temp / 10)")
    temp /= 10
}

print("-> Total sum of digits for \(inputNumber) is: \(sumOfDigits)")

func sumOfDigits(for number: Int) -> Int {
    var n = abs(number)
    var total = 0
    while n > 0 {
        total += n % 10
        n /= 10
    }
    return total
}

print("\n--- Additional Test Cases ---")
let testCases: [Int] = [1234, 9876, 5, 0, 99999, -543, 1000]
for val in testCases {
    print("Number: \(val) -> Sum of Digits: \(sumOfDigits(for: val))")
}
