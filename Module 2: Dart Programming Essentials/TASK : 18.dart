import 'dart:io';

class BankAccount
{
  var balance = 0.0;

  void deposit(var amount)
  {
    balance += amount;
  }

  void withdraw(var amount)
  {
    if (amount <= balance)
    {
      balance -= amount;
    } else
    {
      print("Not enough balance.");
    }
  }

  void showBalance()
  {
    print("Balance: $balance");
  }
}

void main()
{
  var account = BankAccount();

  print("Enter amount to deposit:");
  var depositAmount = double.parse(stdin.readLineSync().toString());
  account.deposit(depositAmount);

  print("Enter amount to withdraw:");
  var withdrawAmount = double.parse(stdin.readLineSync().toString());
  account.withdraw(withdrawAmount);

  account.showBalance();
}
