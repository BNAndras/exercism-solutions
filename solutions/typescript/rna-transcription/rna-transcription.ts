enum nucleotide {
  adenine = "A",
  cytosine = "C",
  guanine = "G",
  thymine = "T",
  uracil = "U",
}

const mapping = new Map([
  [nucleotide.guanine, nucleotide.cytosine],
  [nucleotide.cytosine, nucleotide.guanine],
  [nucleotide.thymine, nucleotide.adenine],
  [nucleotide.adenine, nucleotide.uracil],
]);

export function toRna(dna: string): string {
  return [...dna].reduce((rna, c) => {
    const n = mapping.get(c as nucleotide);
    if (n === undefined) {
      throw new Error("Invalid input DNA.");
    }
    rna += n;
    return rna;
  }, "");
}
