using System;

public static class LogAnalysis 
{
    public static string SubstringAfter(this string str, string start)
    {
        int startIndex = str.IndexOf(start, StringComparison.Ordinal) + start.Length;
        return str[startIndex..];
    }

    public static string SubstringBetween(this string str, string start, string end)
    {
        string fragment = str.SubstringAfter(start);
        int endIndex = fragment.IndexOf(end, StringComparison.Ordinal);
        
        return fragment[..endIndex];
    }
    
    public static string Message(this string str) =>
        str.SubstringAfter(": ");

    public static string LogLevel(this string str) =>
        str.SubstringBetween("[", "]");
}