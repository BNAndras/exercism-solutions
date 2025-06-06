enum nucleotide {
  adenine = "A",
  cytosine = "C",
  guanine = "G",
  thymine = "T",
  uracil = "U",
}

const ERR_INVALID_INPUT = "Invalid input DNA.";
const REGEX_TEST_FOR_INVALID_NUC = new RegExp("[^CGAT]","g")
const REGEX_FIND_VALID_NUC = new RegExp("[CGAT]","g")

const complements = new Map([
  [nucleotide.guanine, nucleotide.cytosine],
  [nucleotide.cytosine, nucleotide.guanine],
  [nucleotide.thymine, nucleotide.adenine],
  [nucleotide.adenine, nucleotide.uracil],
]);

export function toRna(dna: string): string {
  if (dna.match(REGEX_TEST_FOR_INVALID_NUC)) {
    throw new Error(ERR_INVALID_INPUT);
  }

  return dna.replace(REGEX_FIND_VALID_NUC, (c) => complements.get(c as nucleotide) as string)
}