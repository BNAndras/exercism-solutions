using System;
using System.Collections.Generic;
using System.Linq;

public static class ProteinTranslation
{
    public static string[] Proteins(string strand) =>
        strand
            .Chunk(3)
            .Select(chars => new string(chars))
            .TakeWhile(c => Mappings.TryGetValue(c, out string protein) && protein != "STOP")
            .Select(c => Mappings[c])
            .ToArray();
    
    private static Dictionary<string, string> Mappings =>
        new()
        {
            {"AUG", "Methionine"},
            {"UUU", "Phenylalanine"},
            {"UUC", "Phenylalanine"},
            {"UUA", "Leucine"},
            {"UUG", "Leucine"},
            {"UCU", "Serine"},
            {"UCC", "Serine"},
            {"UCA", "Serine"},
            {"UCG", "Serine"},
            {"UAU", "Tyrosine"},
            {"UAC", "Tyrosine"},
            {"UGU", "Cysteine"},
            {"UGC", "Cysteine"},
            {"UGG", "Tryptophan"},
            {"UAA", "STOP"},
            {"UAG", "STOP"},
            {"UGA", "STOP"},
        };
}