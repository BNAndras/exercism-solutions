const ERR_INVALID_INPUT = "Invalid input DNA.";
const REGEX_TEST_FOR_INVALID_NUC = new RegExp("[^CGAT]","g")

const complements: { [key: string]: string } = {
  "G": "C",
  "C": "G",
  "T": "A",
  "A": "U",
}

export function toRna(dna: string): string {
  if (dna.match(REGEX_TEST_FOR_INVALID_NUC)) {
    throw new Error(ERR_INVALID_INPUT);
  }

  return [...dna].reduce((output, letter) => {
    output += complements[letter];
    return output
  }, '')
}