public static class  LogAnalysis 
{
    public static string SubstringAfter(this string str, string delimiter)  =>
        str.Substring(str.IndexOf(delimiter) + delimiter.Length);

    public static string SubstringBetween(this string str, string start, string end) =>
        str.SubstringAfter(start).SubstringBefore(end);
    
    private static string SubstringBefore(this string str, string delimiter)  =>
        str.Substring(0, str.IndexOf(delimiter));

    public static string Message(this string str) =>
        str.SubstringAfter(": ");

    public static string LogLevel(this string str) =>
        str.SubstringBetween("[", "]");
}
