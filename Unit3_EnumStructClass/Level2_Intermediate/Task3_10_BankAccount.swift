import Foundation

print("=== Task 3.10: BankAccount Struct with Overdraft Protection ===")

struct BankAccount {
    let accountNumber: String
    private(set) var balance: Double

    mutating func deposit(_ amount: Double) {
        guard amount > 0 else {
            print("Deposit amount must be positive.")
            return
        }
        balance += amount
        print("Deposited ₹\(amount). Current Balance: ₹\(balance)")
    }

    mutating func withdraw(_ amount: Double) -> Bool {
        guard amount > 0 else {
            print("Withdrawal amount must be positive.")
            return false
        }
        guard balance >= amount else {
            print("Declined: Cannot withdraw ₹\(amount). Overdraft prevented! Balance is ₹\(balance)")
            return false
        }
        balance -= amount
        print("Withdrew ₹\(amount). Remaining Balance: ₹\(balance)")
        return true
    }
}

var account = BankAccount(accountNumber: "SB-10023", balance: 5000.0)
print("Account created: \(account.accountNumber) with balance ₹\(account.balance)")

account.deposit(2500.0)
account.withdraw(4000.0)
account.withdraw(5000.0) // Fails overdraft check
