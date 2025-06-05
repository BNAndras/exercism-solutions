using System;

public static class SimpleCalculator
{
    private enum Calculation
    {
        Addition,
        Multiplication,
        Division,
    }
    
    public static string Calculate(int operand1, int operand2, string operation)
    {
        if (operation is null)
            throw new ArgumentNullException(nameof(operation));
        if (operation == string.Empty)
            throw new ArgumentException(operation, nameof(operation));
        
        Calculation mode = GetCalculation(operation);
        if (mode is Calculation.Division && operand2 is 0)
        {
            return "Division by zero is not allowed.";
        }
        
        int result = mode switch
        {
            Calculation.Addition => SimpleOperation.Addition(operand1, operand2),
            Calculation.Multiplication => SimpleOperation.Multiplication(operand1, operand2),
            Calculation.Division => SimpleOperation.Division(operand1, operand2)
        };

        return $"{operand1} {operation} {operand2} = {result}";
    }

    private static Calculation GetCalculation(string operation) =>
        operation switch
        {
            "+" => Calculation.Addition,
            "*" => Calculation.Multiplication,
            "/" => Calculation.Division,
            _ => throw new ArgumentOutOfRangeException(nameof(operation), operation)
        };
}
