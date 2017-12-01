package jsp.wideskills_com_jsp.lesson_23;

public class Account {
    private String accountNumber="000000";
    private int  balance;
    public Account() {
    }
    public String getAccountNumber() {
        return accountNumber;
    }
    public void setAccountNumber(String accountNumber) {
        this.accountNumber = accountNumber;
    }
    public int getBalance() {
        return balance;
    }
    public void setBalance(int balance) {
        this.balance = balance;
    }
}
