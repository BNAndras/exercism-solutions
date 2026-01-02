public static class ProteinTranslation
{
    public static string[] Proteins(string strand) =>
        strand
            .Chunk(3)
            .Select(chars => new string(chars))
            .Select(Translate)
            .TakeWhile(c => c != "STOP")
            .ToArray();

    private static string Translate(string codon) =>
        codon switch
        {
            "AUG" => "Methionine",
            "UUU" => "Phenylalanine",
            "UUC" => "Phenylalanine",
            "UUA" => "Leucine",
            "UUG" => "Leucine",
            "UCU" => "Serine",
            "UCC" => "Serine",
            "UCA" => "Serine",
            "UCG"  => "Serine",
            "UAU" => "Tyrosine",
            "UAC" => "Tyrosine",
            "UGU" => "Cysteine",
            "UGC" => "Cysteine",
            "UGG" => "Tryptophan",
            "UAA" => "STOP",
            "UAG" => "STOP",
            "UGA" => "STOP",
            _ => throw new ArgumentOutOfRangeException(nameof(codon), codon, "Not a valid codon")
        };
}