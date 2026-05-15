public static class Triangle
{
    public static bool IsScalene(double side1, double side2, double side3)
    {
        if (!IsTriangle(side1, side2, side3))
        {
            return false;
        }
        
        return side1 != side2 && side1 != side3 && side2 != side3;
    }

    public static bool IsIsosceles(double side1, double side2, double side3) 
    {
        if (!IsTriangle(side1, side2, side3))
        {
            return false;
        }
        
        return side1 - side2 == 0 || side1 - side3 == 0 || side2 - side3 == 0 || side2 - side3 == 0; 
    }

    public static bool IsEquilateral(double side1, double side2, double side3) 
    {
        if (!IsTriangle(side1, side2, side3))
        {
            return false;
        }
        
        return side1 == side2 && side2 == side3;
    }

    private static bool IsTriangle(double side1, double side2, double side3) =>
        HasPositiveSides(side1, side2, side3) && SatisfiesInequality(side1, side2, side3);

    private static bool HasPositiveSides(double side1, double side2, double side3) =>
        side1 >= 0 && side2 >= 0 && side3 >= 0;

    private static bool SatisfiesInequality(double side1, double side2, double side3)
    {
        List<double> sides = [side1, side2, side3];
        sides.Sort();

        return sides[2] < (sides[1] + sides[0]);
    }
}