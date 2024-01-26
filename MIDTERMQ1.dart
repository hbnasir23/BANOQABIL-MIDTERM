// MID TERM BANO QABIL 2.0
// Q1
// Create a class called "BankAccount" with the following attributes and methods:
// ● account_number (integer)
// ● balance (double)
// ● account_type (string)
// ● interest_rate (double)
// ● deposit(amount): adds the amount to the balance.
// ● withdraw(amount): subtracts the amount from the balance. You cannot withdraw more than the current balance.
// ● add_interest(): adds interest to the balance based on the interest rate.
// ● display(): prints out the account number, balance, account type, and interest rate.
// Then, create two instances of the BankAccount class, each with its own account number, balance, account type, and interest rate.
// Finally, call the deposit(), withdraw(), add_interest(), and display() methods on each instance and confirm that the information is updated and displayed correctly.


class BankAccount {
  int account_number;
  double balance;
  String account_type;
  double interest_rate;
  // Constructor...!
  BankAccount({required this.account_number,required this.balance,required this.account_type,required this.interest_rate});

  // Methods...!
  void deposit(double amount) {
    balance += amount;
    print('Deposited $amount. New balance: $balance');
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print('Withdrawn $amount. New balance: $balance');
    } else {
      print('Insufficient funds. Withdrawal not allowed.');
    }
  }

  void add_interest() {
    double interest = balance * interest_rate / 100;
    balance += interest;
    print('Interest: $interest. New balance: $balance\n');
  }

  void display() {
    print('Account Number: $account_number');
    print('Balance: $balance');
    print('Account Type: $account_type');
    print('Interest Rate: $interest_rate%\n');
  }
}

void main() {
  BankAccount Man1 = BankAccount(account_number: 23068, balance: 600000.0, account_type: 'Current', interest_rate: 0.0);
  BankAccount Man2 = BankAccount(account_number: 18092, balance: 200000.0, account_type: 'Islamic', interest_rate: 5.5);

  Man1.display();
  Man1.deposit(10000);
  Man1.withdraw(2000);
  Man1.add_interest();
  Man1.display();

  Man2.display();
  Man2.deposit(5000);
  Man2.withdraw(10000);
  Man2.add_interest();
  Man2.display();
}
