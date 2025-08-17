static class SavingsAccount
{
    public static float InterestRate(decimal balance) =>
        balance switch
        {
            < 0 =>     3.213f,
            < 1_000 => 0.5f,
            < 5_000 => 1.621f,
            _ =>       2.475f
        };

    public static decimal Interest(decimal balance)  =>
        balance * ((decimal) InterestRate(balance) / 100);

    public static decimal AnnualBalanceUpdate(decimal balance) =>
        balance + Interest(balance);

    public static int YearsBeforeDesiredBalance(decimal balance, decimal targetBalance)
    {
        int years = 0;
        decimal current = balance;
        while (current < targetBalance)
        {
            current = AnnualBalanceUpdate(current);
            years += 1;
        }
        return years;
    }
}
