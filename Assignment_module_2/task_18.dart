// Define a BankAccount class with properties like account number, account holder, and balance. Add methods to deposit, withdraw,
// and check the balance. Ensure the withdraw method doesn’t allow overdrafts.

class BankAccount {
  var acc_no;
  var acc_holder;
  var balance;

  BankAccount(int acc_no, String acc_holder, double balance) {
    this.acc_no = acc_no;
    this.acc_holder = acc_holder;
    this.balance = balance;
  }

  deposit(double amount) {
    if(amount > 0) {
      balance += amount;
      print("Deposited ₹$amount. New balance: ₹$balance");
    } else {
      print("Invalid deposit amount.");
    }
  }

  withdraw(double amount) {
    if (amount <= 0) {
      print("Invalid withdrawal amount.");
    } else if (amount > balance) {
      print("Insufficient balance. Withdrawal denied.");
    } else {
      balance -= amount;
      print("Withdrew ₹$amount. New balance: ₹$balance");
    }
  }

  checkBalance() {
    print("Current balance: ₹$balance");
  }
}
void main() {
  BankAccount b1 = BankAccount(1234567890, "Vani", 5000);
  b1.checkBalance();
  b1.deposit(1000);
  b1.withdraw(2000);
  b1.withdraw(5000);
  b1.checkBalance();
}