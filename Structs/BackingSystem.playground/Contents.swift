class BankSystem {
    var accountType: String = ""
    
    
    func welcomeMethod() {
        print("Welcome to your virtual bank system.")
        print("What kind of account would you like to open?")
        print("1. Debit account")
        print("2. Credit account")
    }
    
    func defineTypeAcocunt(numberPadKey: Int) {
        print("The selected option is \(numberPadKey).")
        switch numberPadKey {
            case 1:
                accountType = "debit"
            case 2:
                accountType = "credit"
            default:
                print("Invalid input: \(numberPadKey)")
                return
        }
        print("You have opened a \(accountType) account.")
    }
   
}

struct BankAccount {
    var debitBalance = 0
    var creditBalance = 0
    var creditLimit = 100
    
    var debitBalanceInfo: String {
        "Debit balance: $\(debitBalance)"
    }
    var availableCredit: Int {
        creditLimit + creditBalance
    }
    var creditBalanceInfo: String {
        "Availabe credit $\(availableCredit)"
    }
    
    mutating func debitDeposit(_ amount: Int){
        debitBalance += amount
        print("Deposited $\(amount). \(debitBalanceInfo)")
    }
    
    mutating func creditDeposit(_ amount: Int){
        creditBalance += amount
        print("Deposited $\(amount). \(creditBalanceInfo)")
        
        if(creditBalance == 0){
            print("Paid off credit balance")
        }else{
            print("Overpaid credit balance")
        }
    }
    
    mutating func debitWithdraw(_ amount: Int){
        if(amount > debitBalance){
            print("Insufficient fund to withdraw $\(amount). \(debitBalanceInfo)")
        }else{
            debitBalance -= amount
            print("Credit withdraw: $\(amount). \(debitBalanceInfo)")
        }
    }
    
    mutating func creditWithdraw(_ amount: Int){
        if(amount > availableCredit){
            print("Insufficient credit to withdraw $\(amount). \(creditBalanceInfo)")
        }else{
            creditBalance -= amount
            print("Credit withdraw: $\(amount). \(creditBalanceInfo)")
        }
    }
}

let virtualBankSystem = BankSystem()

repeat {
    virtualBankSystem.welcomeMethod()
    let numberPadKey = Int.random(in: 1...3)
    virtualBankSystem.defineTypeAcocunt(numberPadKey: numberPadKey)
    
} while virtualBankSystem.accountType == ""


var bankAccount = BankAccount()
print(bankAccount.debitBalanceInfo)
bankAccount.debitDeposit(100)
bankAccount.debitWithdraw(20)
bankAccount.debitWithdraw(81)
print(bankAccount.creditBalanceInfo)
bankAccount.creditWithdraw(101)
bankAccount.creditWithdraw(100)
bankAccount.creditDeposit(50)
bankAccount.creditDeposit(50)
bankAccount.creditDeposit(100)



