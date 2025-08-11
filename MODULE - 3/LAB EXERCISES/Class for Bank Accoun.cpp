#include <iostream>
using namespace std;

class BankAccount
{
public:
    int balance = 0;
    ;
    void deposit(int amount)
    {
        balance = balance + amount;
    }

    void withdraw(int amount)
    {
        if (amount <= balance)
        {
            balance = balance - amount;
        }
        else
        {
            cout << "Not enough balance." << endl;
        }
    }

    void showBalance()
    {
        cout << "Current balance: " << balance << endl;
    }
};

int main()
{
    BankAccount myAccount;

    myAccount.deposit(1200);
    myAccount.withdraw(200);
    myAccount.showBalance();

    return 0;
}
