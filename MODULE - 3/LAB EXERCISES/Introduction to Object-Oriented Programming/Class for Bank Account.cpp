#include <iostream>
using namespace std;

class BankAccount
{
private:
    double balance; // Private data member

public:
    // Constructor to initialize balance
    BankAccount(double initialBalance)
    {
        if (initialBalance < 0)
        {
            cout << "Initial balance can't be negative. Setting balance to 0." << endl;
            balance = 0;
        }
        else
        {
            balance = initialBalance;
        }
    }

    // Function to deposit money
    void deposit(double amount)
    {
        if (amount > 0)
        {
            balance += amount;
            cout << "Deposited: " << amount << endl;
        }
        else
        {
            cout << "Invalid deposit amount." << endl;
        }
    }

    // Function to withdraw money
    void withdraw(double amount)
    {
        if (amount <= 0)
        {
            cout << "Invalid withdrawal amount." << endl;
        }
        else if (amount > balance)
        {
            cout << "Insufficient balance." << endl;
        }
        else
        {
            balance -= amount;
            cout << "Withdrawn: " << amount << endl;
        }
    }

    // Function to display current balance
    void displayBalance() const
    {
        cout << "Current balance: " << balance << endl;
    }
};

int main()
{
    // Create a BankAccount object with an initial balance
    BankAccount myAccount(1000.0);

    // Perform operations
    myAccount.displayBalance();
    myAccount.deposit(500.0);
    myAccount.withdraw(200.0);
    myAccount.withdraw(1500.0); // Should fail due to insufficient funds
    myAccount.displayBalance();

    return 0;
}
