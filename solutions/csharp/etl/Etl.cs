public static class Etl
{
    public static Dictionary<string, int> Transform(Dictionary<int, string[]> old)
    {
        Dictionary<string, int> result = new();
        foreach ((int score, string[] letters) in old)
        {
            foreach (string letter in letters)
            {
                string lowered = letter.ToLowerInvariant();
                result[lowered] = score;
            }
        }
        return result;
    }
}
