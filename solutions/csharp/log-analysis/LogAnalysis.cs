public static class LogAnalysis 
{
    public static string SubstringAfter(this string str, string text)  =>
        str.Substring(str.IndexOf(text, StringComparison.Ordinal) + text.Length);
    
    private static string SubstringBefore(this string str, string text) =>
        str.Substring(0, str.IndexOf(text, StringComparison.Ordinal));
    
    public static string SubstringBetween(this string str, string start, string end) =>
        str.SubstringAfter(start).SubstringBefore(end);
    
    public static string Message(this string str) =>
        str.SubstringAfter(": ");

    public static string LogLevel(this string str) =>
        str.SubstringBetween("[", "]");
}
