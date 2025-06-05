using System.Text;

public static class Identifier
{
    public static string Clean(string identifier)
    {
        StringBuilder sb = new();
        bool kebab = false;
        foreach (char chr in identifier)
        {
            if (char.IsWhiteSpace(chr))
            {
                sb.Append('_');
            } else if (char.IsControl(chr))
            {
                sb.Append("CTRL");
            } else if (!kebab && chr is '-')
            {
                kebab = true;
            } else if (kebab && char.IsLetter(chr))
            {
                sb.Append(char.ToUpper(chr));
                kebab = false;
            } else if (char.IsLetter(chr) && chr is < 'α' or > 'ω')
            {
                sb.Append(chr);
            }
        }

        return sb.ToString();
    }
}
