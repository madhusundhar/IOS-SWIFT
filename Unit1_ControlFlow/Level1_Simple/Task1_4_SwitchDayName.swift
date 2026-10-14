/*
 * Unit 1: Basic Swift – Control Flow and Decision-Making Statements
 * Level 1: Simple
 * Task 1.4: Day Name Using Switch Statement
 * File: Task1_4_SwitchDayName.swift
 *
 * Objective:
 * Use a switch statement to print the day name for numbers 1–7.
 * Print "Invalid" for any other value.
 */

import Foundation

print("=== Task 1.4: Day of the Week Lookup ===")

var dayNumber: Int = 3

// Evaluate the day using a switch statement
switch dayNumber {
case 1:
    print("Day \(dayNumber): Monday")
case 2:
    print("Day \(dayNumber): Tuesday")
case 3:
    print("Day \(dayNumber): Wednesday")
case 4:
    print("Day \(dayNumber): Thursday")
case 5:
    print("Day \(dayNumber): Friday")
case 6:
    print("Day \(dayNumber): Saturday")
case 7:
    print("Day \(dayNumber): Sunday")
default:
    print("Day \(dayNumber): Invalid")
}

// Reusable function returning the day name
func dayName(for number: Int) -> String {
    switch number {
    case 1: return "Monday"
    case 2: return "Tuesday"
    case 3: return "Wednesday"
    case 4: return "Thursday"
    case 5: return "Friday"
    case 6: return "Saturday"
    case 7: return "Sunday"
    default: return "Invalid"
    }
}

print("\n--- Additional Test Cases (1 to 7 and invalid inputs) ---")
let testDays: [Int] = [1, 2, 3, 4, 5, 6, 7, 0, 8, -3, 100]
for d in testDays {
    print("Input: \(d) -> Day: \(dayName(for: d))")
}
