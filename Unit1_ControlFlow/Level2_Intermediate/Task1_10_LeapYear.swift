/*
 * Unit 1: Basic Swift – Control Flow and Decision-Making Statements
 * Level 2: Intermediate
 * Task 1.10: Leap Year Checker
 * File: Task1_10_LeapYear.swift
 *
 * Objective:
 * Check whether a given year is a leap year (divisible by 4, except century
 * years not divisible by 400).
 */

import Foundation

print("=== Task 1.10: Leap Year Verification ===")

let year: Int = 2024

var isLeapYear: Bool

if year % 400 == 0 {
    isLeapYear = true
} else if year % 100 == 0 {
    isLeapYear = false
} else if year % 4 == 0 {
    isLeapYear = true
} else {
    isLeapYear = false
}

if isLeapYear {
    print("Year \(year) is a LEAP YEAR.")
} else {
    print("Year \(year) is NOT a leap year (Common Year).")
}

// Function using the standard single-expression formula
func checkLeapYear(_ y: Int) -> Bool {
    return (y % 4 == 0 && y % 100 != 0) || (y % 400 == 0)
}

print("\n--- Testing Specified Standard Years ---")
let sampleYears = [1900, 2000, 2024, 2026, 2004, 2100, 1600]
for y in sampleYears {
    let result = checkLeapYear(y)
    let status = result ? "LEAP YEAR" : "NOT a leap year"
    print("Year \(y): \(status)")
}
