using System;

abstract class Character
{
    private string CharacterType { get; }
    protected Character(string characterType) =>
        CharacterType = characterType;

    public abstract int DamagePoints(Character target);

    public virtual bool Vulnerable() =>
        false;

    public override string ToString() =>
        $"Character is a {CharacterType}";
}

class Warrior() : Character("Warrior")
{
    public override int DamagePoints(Character target) =>
        target.Vulnerable() ? 10 : 6;
}

class Wizard() : Character("Wizard")
{
    private bool PreparedSpell { get; set; }
    public override int DamagePoints(Character target)  =>
        PreparedSpell ? 12 : 3;

    public void PrepareSpell()
    {
        if (!PreparedSpell)
        {
            PreparedSpell = true;
        }
    }

    public override bool Vulnerable() =>
        !PreparedSpell;
}
