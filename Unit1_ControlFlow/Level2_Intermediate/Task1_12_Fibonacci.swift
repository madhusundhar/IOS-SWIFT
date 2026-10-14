/*
 * Unit 1: Basic Swift – Control Flow and Decision-Making Statements
 * Level 2: Intermediate
 * Task 1.12: Fibonacci Series up to n Terms
 * File: Task1_12_Fibonacci.swift
 *
 * Objective:
 * Print the Fibonacci series up to n terms (e.g., for n = 10: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34).
 */

import Foundation

print("=== Task 1.12: Fibonacci Series up to n terms ===")

let n: Int = 10

print("Printing the first \(n) terms of the Fibonacci sequence:")

if n <= 0 {
    print("Please specify a positive number of terms (n > 0).")
} else if n == 1 {
    print("0")
} else {
    var first: Int = 0
    var second: Int = 1
    
    print("\(first), \(second)", terminator: "")
    
    for _ in 3...n {
        let nextTerm = first + second
        print(", \(nextTerm)", terminator: "")
        first = second
        second = nextTerm
    }
    print()
}

func generateFibonacci(terms: Int) -> [Int] {
    guard terms > 0 else { return [] }
    if terms == 1 { return [0] }
    
    var sequence: [Int] = [0, 1]
    for _ in 3...terms {
        let next = sequence[sequence.count - 1] + sequence[sequence.count - 2]
        sequence.append(next)
    }
    return sequence
}

print("\n--- Additional Test Cases ---")
let testTermCounts = [1, 2, 5, 8, 12]
for count in testTermCounts {
    let result = generateFibonacci(terms: count)
    print("Fibonacci (\(count) terms): \(result.map(String.init).joined(separator: ", "))")
}
