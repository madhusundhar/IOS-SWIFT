/*
 * Unit 1: Basic Swift – Control Flow and Decision-Making Statements
 * Level 1: Simple
 * Task 1.3: Student Grade Evaluation
 * File: Task1_3_StudentGrade.swift
 *
 * Objective:
 * Given a student's mark (0–100), print the grade:
 * A (90+), B (80–89), C (70–79), D (60–69), F (below 60). Use if / else if.
 */

import Foundation

print("=== Task 1.3: Student Grade Calculator ===")

var mark: Int = 85

// Input validation and grading logic using if / else if
if mark < 0 || mark > 100 {
    print("Invalid mark: \(mark). Mark must be between 0 and 100.")
} else if mark >= 90 {
    print("Mark: \(mark) -> Grade: A (Excellent)")
} else if mark >= 80 {
    print("Mark: \(mark) -> Grade: B (Very Good)")
} else if mark >= 70 {
    print("Mark: \(mark) -> Grade: C (Good)")
} else if mark >= 60 {
    print("Mark: \(mark) -> Grade: D (Satisfactory)")
} else {
    print("Mark: \(mark) -> Grade: F (Fail)")
}

// Function to grade a given mark
func calculateGrade(for score: Int) -> String {
    if score < 0 || score > 100 {
        return "Invalid Score"
    } else if score >= 90 {
        return "A"
    } else if score >= 80 {
        return "B"
    } else if score >= 70 {
        return "C"
    } else if score >= 60 {
        return "D"
    } else {
        return "F"
    }
}

print("\n--- Additional Test Cases across Grade Boundaries ---")
let sampleMarks: [Int] = [100, 95, 90, 89, 80, 79, 70, 69, 60, 59, 45, 0, -10, 105]
for score in sampleMarks {
    print("Mark: \(score)\t=> Grade: \(calculateGrade(for: score))")
}
