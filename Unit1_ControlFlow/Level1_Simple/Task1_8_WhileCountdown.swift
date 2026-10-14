/*
 * Unit 1: Basic Swift – Control Flow and Decision-Making Statements
 * Level 1: Simple
 * Task 1.8: Countdown Using While Loop
 * File: Task1_8_WhileCountdown.swift
 *
 * Objective:
 * Use a while loop to print numbers from 10 down to 1.
 */

import Foundation

print("=== Task 1.8: Countdown from 10 down to 1 using While Loop ===")

var counter: Int = 10

// While loop executes as long as the condition evaluates to true
while counter >= 1 {
    print("Countdown: \(counter)")
    counter -= 1
}

print("Blast off! Loop finished.")

// Additional demonstration: inline horizontal countdown
print("\nHorizontal display:")
var inlineCounter = 10
while inlineCounter >= 1 {
    print("\(inlineCounter)", terminator: (inlineCounter > 1) ? " -> " : "\n")
    inlineCounter -= 1
}
