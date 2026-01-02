abstract class Character(string characterType)
{
    public abstract int DamagePoints(Character target);

    public virtual bool Vulnerable() =>
        false;

    public override string ToString() =>
        $"Character is a {characterType}";
}

class Warrior() : Character(nameof(Warrior))
{
    public override int DamagePoints(Character target) =>
        target.Vulnerable() ? 10 : 6;
}

class Wizard() : Character(nameof(Wizard))
{
    private bool _spellPrepared;

    public override int DamagePoints(Character target) =>
        _spellPrepared ? 12: 3;

    public void PrepareSpell()
    {
        if (!_spellPrepared)
        {
            _spellPrepared = true;
        }
    }

    public override bool Vulnerable() =>
        !_spellPrepared;
}
