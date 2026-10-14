/*
 * Unit 1: Basic Swift – Control Flow and Decision-Making Statements
 * Level 2: Intermediate
 * Task 1.16: Right-Angled Star Triangle Patterns
 * File: Task1_16_StarTriangle.swift
 *
 * Objective:
 * 1. Print a right-angled triangle pattern of stars with n rows using nested loops.
 * 2. As a variation, use continue to skip even rows.
 */

import Foundation

print("=== Task 1.16: Right-Angled Star Triangle Patterns ===")

let n: Int = 5

// Part 1: Standard right-angled triangle of stars (n rows)
print("\n--- Part 1: Standard Triangle (n = \(n)) ---")
for row in 1...n {
    for _ in 1...row {
        print("*", terminator: "")
    }
    print()
}

// Part 2: Variation skipping even rows using `continue`
print("\n--- Part 2: Variation Skipping Even Rows (Using 'continue') ---")
for row in 1...n {
    if row % 2 == 0 {
        continue
    }
    for _ in 1...row {
        print("*", terminator: "")
    }
    print(" (Row \(row))")
}

func printTriangle(rows: Int, skipEven: Bool = false) {
    print("\nCustom Triangle (rows: \(rows), skipEven: \(skipEven)):")
    for row in 1...rows {
        if skipEven && row % 2 == 0 {
            continue
        }
        for _ in 1...row {
            print("*", terminator: "")
        }
        print()
    }
}

printTriangle(rows: 6, skipEven: false)
printTriangle(rows: 6, skipEven: true)
