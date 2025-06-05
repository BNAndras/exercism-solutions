static class Badge
{
    public static string Print(int? id, string name, string? department)
    {
        department ??= "OWNER";
        department = department?.ToUpper();
        
        if (id is null)
        {
            return $"{name} - {department}";
        }

        return $"[{id}] - {name} - {department}";
    }
}
