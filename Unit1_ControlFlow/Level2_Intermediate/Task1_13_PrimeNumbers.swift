/*
 * Unit 1: Basic Swift – Control Flow and Decision-Making Statements
 * Level 2: Intermediate
 * Task 1.13: Prime Number Checker and Primes (1 to 50)
 * File: Task1_13_PrimeNumbers.swift
 *
 * Objective:
 * Check if a number is prime. Then print all primes between 1 and 50.
 */

import Foundation

print("=== Task 1.13: Prime Number Checker & Primes (1 to 50) ===")

func isPrime(_ number: Int) -> Bool {
    if number <= 1 {
        return false
    }
    if number <= 3 {
        return true
    }
    if number % 2 == 0 || number % 3 == 0 {
        return false
    }
    
    var divisor = 5
    while divisor * divisor <= number {
        if number % divisor == 0 || number % (divisor + 2) == 0 {
            return false
        }
        divisor += 6
    }
    return true
}

// Part 1: Check sample numbers
let sampleNumber: Int = 29
if isPrime(sampleNumber) {
    print("Number \(sampleNumber) is a PRIME number.")
} else {
    print("Number \(sampleNumber) is NOT a prime number.")
}

let nonPrimeSample: Int = 49
if isPrime(nonPrimeSample) {
    print("Number \(nonPrimeSample) is a PRIME number.")
} else {
    print("Number \(nonPrimeSample) is NOT a prime number.")
}

// Part 2: Print all primes between 1 and 50
print("\n--- Prime Numbers Between 1 and 50 ---")
var primes: [Int] = []

for num in 1...50 {
    if isPrime(num) {
        primes.append(num)
    }
}

print("Primes found (\(primes.count) total):")
print(primes.map(String.init).joined(separator: ", "))
