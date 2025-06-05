public static class Etl
{
    public static Dictionary<string, int> Transform(Dictionary<int, string[]> old)
    {
        Dictionary<string, int> result = new();
        foreach ((int score, string[] letters) in old)
        {
            foreach (var letter in letters)
            {
                result[letter.ToLowerInvariant()] = score;
            }
        }
        return result;
    }
}