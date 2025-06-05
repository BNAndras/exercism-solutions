using System;
using System.Collections.Generic;
using System.Linq;

public static class Raindrops
{
    public static string Convert(int number) =>
        Rules
            .Where(rule => rule.fn(number))
            .Select(rule => rule.result)
            .DefaultIfEmpty($"{number}")
            .Aggregate("", (acc, noise) => acc + noise);

    private static List<(Func<int, bool> fn, string result)> Rules =>
    [
        ((n) => n % 3 == 0, "Pling"),
        ((n) => n % 5 == 0, "Plang"),
        ((n) => n % 7 == 0, "Plong")
    ];
}
