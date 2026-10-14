/*
 * Unit 1: Basic Swift – Control Flow and Decision-Making Statements
 * Level 2: Intermediate
 * Task 1.18: BMI Categorisation using Switch with Ranges and Where Clauses
 * File: Task1_18_BMICategorisation.swift
 *
 * Objective:
 * Use a switch statement with ranges and where clauses to categorise
 * a BMI value as underweight, normal, overweight, or obese.
 */

import Foundation

print("=== Task 1.18: BMI Categorisation (Switch with Ranges & Where Clauses) ===")

var bmi: Double = 23.5

func classifyBMI(_ value: Double) -> String {
    switch value {
    case ..<18.5 where value > 0:
        return "Underweight"
    case 18.5..<25.0:
        return "Normal weight"
    case 25.0..<30.0:
        return "Overweight"
    case let val where val >= 30.0 && val < 35.0:
        return "Obese (Class I - Moderate)"
    case let val where val >= 35.0:
        return "Obese (Class II/III - Severe)"
    default:
        return "Invalid BMI (must be positive)"
    }
}

print("BMI \(bmi): Category -> \(classifyBMI(bmi))")

func calculateBMI(weightKg: Double, heightMeters: Double) -> Double {
    guard heightMeters > 0 else { return 0.0 }
    return weightKg / (heightMeters * heightMeters)
}

print("\n--- Practical People Profiles ---")
let profiles: [(name: String, weight: Double, height: Double)] = [
    ("Alice", 48.0, 1.68),
    ("Bob", 68.0, 1.75),
    ("Charlie", 85.0, 1.72),
    ("Diana", 98.0, 1.65),
    ("Evan", 120.0, 1.70)
]

for profile in profiles {
    let personBMI = calculateBMI(weightKg: profile.weight, heightMeters: profile.height)
    let category = classifyBMI(personBMI)
    print(String(format: "%-10@: Height = %.2fm, Weight = %.1fkg | BMI = %.1f -> %@",
                 profile.name as NSString, profile.height, profile.weight, personBMI, category as NSString))
}
