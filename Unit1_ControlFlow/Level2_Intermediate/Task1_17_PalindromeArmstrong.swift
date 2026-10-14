/*
 * Unit 1: Basic Swift – Control Flow and Decision-Making Statements
 * Level 2: Intermediate
 * Task 1.17: Palindrome and Armstrong Number Checker
 * File: Task1_17_PalindromeArmstrong.swift
 *
 * Objective:
 * Check whether a number is a palindrome (e.g., 121)
 * and whether it is an Armstrong number (e.g., 153).
 */

import Foundation

print("=== Task 1.17: Palindrome and Armstrong Number Checker ===")

func isPalindrome(_ number: Int) -> Bool {
    if number < 0 { return false }
    if number < 10 { return true }
    
    var temp = number
    var reversedNumber = 0
    
    while temp > 0 {
        let lastDigit = temp % 10
        reversedNumber = (reversedNumber * 10) + lastDigit
        temp /= 10
    }
    
    return number == reversedNumber
}

func isArmstrong(_ number: Int) -> Bool {
    if number < 0 { return false }
    if number < 10 { return true }
    
    var temp = number
    var numberOfDigits = 0
    while temp > 0 {
        numberOfDigits += 1
        temp /= 10
    }
    
    temp = number
    var sumOfPowers = 0
    while temp > 0 {
        let digit = temp % 10
        var powerVal = 1
        for _ in 1...numberOfDigits {
            powerVal *= digit
        }
        sumOfPowers += powerVal
        temp /= 10
    }
    
    return sumOfPowers == number
}

let samples = [121, 153, 370, 9474, 1331, 7, 123]

print(String(format: "%-10@ | %-15@ | %-15@", "Number" as NSString, "Is Palindrome?" as NSString, "Is Armstrong?" as NSString))
print(String(repeating: "-", count: 48))

for num in samples {
    let pal = isPalindrome(num) ? "YES" : "NO"
    let arm = isArmstrong(num) ? "YES" : "NO"
    print(String(format: "%-10d | %-15@ | %-15@", num, pal as NSString, arm as NSString))
}

print("\n--- Detailed Breakdown for 153 (Armstrong) ---")
print("153 has 3 digits: 1^3 + 5^3 + 3^3 = 1 + 125 + 27 = 153 (Armstrong!)")

print("\n--- Detailed Breakdown for 121 (Palindrome) ---")
print("121 reversed is 121 (Palindrome!)")
