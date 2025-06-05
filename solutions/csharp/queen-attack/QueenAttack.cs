public class Queen(int row, int column)
{
    public int Row { get; } = row;
    public int Column { get; } = column;
}

public static class QueenAttack
{
    public static bool CanAttack(Queen white, Queen black) =>
        white.Row == black.Row
        || white.Column == black.Column
        || Math.Abs(white.Row - black.Row) == Math.Abs(white.Column - black.Column);

    public static Queen Create(int row, int column)
    {
        if (row is < 0 or > 7)
        {
            throw new ArgumentOutOfRangeException(nameof(row), "Row out of range.");
        }
        if (column is < 0 or > 7)
        {
            throw new ArgumentOutOfRangeException(nameof(column), "Column out of range.");
        }

        return new Queen(row, column);
    }
}