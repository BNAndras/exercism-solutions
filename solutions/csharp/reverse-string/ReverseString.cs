public static class ReverseString
{
    public static string Reverse(string input)
    {
        char[] chars = input.ToCharArray();

        int i = 0;
        int j = chars.Length - 1;

        while (i < j)
        {
            (chars[i], chars[j]) = (chars[j], chars[i]);
            i++;
            j--;
        }
        
        return new string(chars);
    }
}