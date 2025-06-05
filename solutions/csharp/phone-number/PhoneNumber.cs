using System.Text.RegularExpressions;

public class PhoneNumber
{
    public static string Clean(string phoneNumber)
    {
        if (Regex.IsMatch(phoneNumber, @"[a-zA-Z]"))
        {
            throw new ArgumentException("Number contains alphabetic characters", nameof(phoneNumber));
        }

        if (Regex.IsMatch(phoneNumber, @"[^\w\s().+-]"))
        {
            throw new ArgumentException("Number contains invalid punctuation", nameof(phoneNumber));
        }

        string cleaned = Regex.Replace(phoneNumber, @"[\D]", "");

        switch (cleaned.Length)
        {
            case < 10:
                throw new ArgumentException("Number is too short", nameof(phoneNumber));
            case > 11:
                throw new ArgumentException("Number is too long", nameof(phoneNumber));
            case 11 when cleaned[0] is not '1':
                throw new ArgumentException("Eleven-digit number must begin with 1", nameof(phoneNumber));
            case 11:
                cleaned = cleaned[1..];
                break;
        }
        
        if (cleaned[0] is '0' or '1')
        {
            throw new ArgumentException("Area code can not begin with 0 or 1", nameof(phoneNumber));
        }

        if (cleaned[3] is '0' or '1')
        {
            throw new ArgumentException("Exchange code can not begin with 0 or 1", nameof(phoneNumber));
        }
        
        return cleaned;
    }
}