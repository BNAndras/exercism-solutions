using System.Collections.Generic;

public static class Triangle
{
    public static bool IsScalene(double side1, double side2, double side3) =>
        IsValid(side1, side2, side3) && new HashSet<double>() { side1, side2, side3 }.Count == 3;

    public static bool IsIsosceles(double side1, double side2, double side3) =>
        IsValid(side1, side2, side3) && new HashSet<double>() { side1, side2, side3 }.Count <= 2;

    public static bool IsEquilateral(double side1, double side2, double side3)  =>
        IsValid(side1, side2, side3) && new HashSet<double>() { side1, side2, side3 }.Count == 1;
    
    private static bool IsValid(double side1, double side2, double side3) =>
        HasNonZeroSides(side1, side2, side3) && SatisfiesTriangleInequality(side1, side2, side3);
    
    private static bool HasNonZeroSides(double side1, double side2, double side3) =>
        side1 > 0 && side2 > 0 && side3 > 0;

    private static bool SatisfiesTriangleInequality(double side1, double side2, double side3)
    {
        List<double> sides = [side1, side2, side3];
        sides.Sort(); 
        return sides[0] + sides[1] >= sides[2];
    }

}