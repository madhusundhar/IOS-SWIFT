/*
 * Unit 1: Basic Swift – Control Flow and Decision-Making Statements
 * Level 2: Intermediate
 * Task 1.14: Simple Calculator
 * File: Task1_14_Calculator.swift
 *
 * Objective:
 * Given two numbers and an operator (+, -, *, /), use a switch statement
 * to compute the result. Handle division by zero.
 */

import Foundation

print("=== Task 1.14: Simple Calculator ===")

let num1: Double = 25.0
let num2: Double = 4.0
let op: Character = "/"

switch op {
case "+":
    let result = num1 + num2
    print("\(num1) + \(num2) = \(result)")
case "-":
    let result = num1 - num2
    print("\(num1) - \(num2) = \(result)")
case "*":
    let result = num1 * num2
    print("\(num1) * \(num2) = \(result)")
case "/":
    if num2 == 0 {
        print("Error: Division by zero is not allowed.")
    } else {
        let result = num1 / num2
        print("\(num1) / \(num2) = \(result)")
    }
default:
    print("Error: Unsupported operator '\(op)'. Supported operators are +, -, *, /")
}

func calculate(_ a: Double, _ b: Double, operator opChar: Character) -> Double? {
    switch opChar {
    case "+":
        return a + b
    case "-":
        return a - b
    case "*":
        return a * b
    case "/":
        if b == 0 {
            print("[\(a) / \(b)] Error: Cannot divide by zero!")
            return nil
        }
        return a / b
    default:
        print("Invalid operator: '\(opChar)'")
        return nil
    }
}

print("\n--- Additional Test Cases ---")
let operations: [(Double, Double, Character)] = [
    (12.5, 3.5, "+"),
    (50.0, 18.5, "-"),
    (6.0, 7.5, "*"),
    (100.0, 4.0, "/"),
    (42.0, 0.0, "/"),
    (10.0, 2.0, "%")
]

for (n1, n2, operation) in operations {
    if let result = calculate(n1, n2, operator: operation) {
        print("\(n1) \(operation) \(n2) = \(result)")
    }
}
