public class FacialFeatures
{
    public string EyeColor { get; }
    
    public decimal PhiltrumWidth { get; }

    public FacialFeatures(string eyeColor, decimal philtrumWidth)
    {
        EyeColor = eyeColor;
        PhiltrumWidth = philtrumWidth;
    }

    public override bool Equals(object? obj)
    {
        if (obj is not FacialFeatures other)
        {
            return false;
        }

        if (ReferenceEquals(this, other))
        {
            return true;
        }
        
        return EyeColor == other.EyeColor && PhiltrumWidth.Equals(other.PhiltrumWidth);
    }
    
    public override int GetHashCode() =>
        HashCode.Combine(EyeColor, PhiltrumWidth);
}

public class Identity
{
    public string Email { get; }
    
    public FacialFeatures FacialFeatures { get; }

    public Identity(string email, FacialFeatures facialFeatures)
    {
        Email = email;
        FacialFeatures = facialFeatures;
    }

    public override bool Equals(object? obj)
    {
        if (obj is not Identity other)
        {
            return false;
        }

        if (ReferenceEquals(this, other))
        {
            return true;
        }
        
        return Email == other.Email && FacialFeatures.Equals(other.FacialFeatures);
    }

    public override int GetHashCode() =>
        HashCode.Combine(Email, FacialFeatures);
}

public class Authenticator
{
    private Identity Admin => new("admin@exerc.ism", new ("green", 0.9m));
    
    private HashSet<Identity> Identities { get; } = new();
    
    public static bool AreSameFace(FacialFeatures faceA, FacialFeatures faceB) =>
        Equals(faceA, faceB);

    public bool IsAdmin(Identity identity) =>
        identity.Equals(Admin);
    
    public bool Register(Identity identity) =>
        Identities.Add(identity);

    public bool IsRegistered(Identity identity) =>
        Identities.Contains(identity);

    public static bool AreSameObject(Identity identityA, Identity identityB) =>
        ReferenceEquals(identityA, identityB);
}
