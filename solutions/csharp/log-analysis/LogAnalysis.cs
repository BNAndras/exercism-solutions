public static class LogAnalysis 
{
    public static string SubstringAfter(this string str, string delimiter) =>
        str.Substring(str.IndexOf(delimiter) + delimiter.Length);

    public static string SubstringBetween(this string str, string start, string stop)
    {
        int startIndex = str.IndexOf(start) + start.Length;
        int stopIndex = str.IndexOf(stop, startIndex);
        return str.Substring(startIndex, stopIndex - startIndex);
    }

    public static string Message(this string str) =>
        str.SubstringAfter("]: ");

    public static string LogLevel(this string str) =>
        str.SubstringBetween("[", "]");
}