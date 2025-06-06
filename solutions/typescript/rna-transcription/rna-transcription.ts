const ERR_INVALID_INPUT = "Invalid input DNA.";

export function toRna(dna: string): string {
  return [...dna].reduce(buildRna, "");
}

function buildRna(rna: string, c: string): string {
  rna += getComplementOf(c);
  return rna;
}

function getComplementOf(c: string): string {
  const n = complements.get(c as nucleotide);
  if (n === undefined) {
    throw new Error(ERR_INVALID_INPUT);
  }

  return n;
}

enum nucleotide {
  adenine = "A",
  cytosine = "C",
  guanine = "G",
  thymine = "T",
  uracil = "U",
}

const complements = new Map([
  [nucleotide.guanine, nucleotide.cytosine],
  [nucleotide.cytosine, nucleotide.guanine],
  [nucleotide.thymine, nucleotide.adenine],
  [nucleotide.adenine, nucleotide.uracil],
]);
