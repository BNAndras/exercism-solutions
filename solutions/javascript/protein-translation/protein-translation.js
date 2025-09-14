export const translate = (strand = '') => {
  const proteins = [];
  for (let i = 0; i < strand.length; i += 3) {
    const codon = strand.slice(i, i + 3);
    const protein = toProtein(codon);
    if (protein === 'STOP') break;
    proteins.push(protein);
  }

  return proteins
};


const toProtein = (codon) => {
  if (codon === 'AUG') return 'Methionine';
  if (codon === 'UUU') return 'Phenylalanine';
  if (codon === 'UUC') return 'Phenylalanine';
  if (codon === 'UUA') return 'Leucine';
  if (codon === 'UUG') return 'Leucine';
  if (codon === 'UCU') return 'Serine';
  if (codon === 'UCC') return 'Serine';
  if (codon === 'UCA') return 'Serine';
  if (codon === 'UCG') return 'Serine';
  if (codon === 'UAU') return 'Tyrosine';
  if (codon === 'UAC') return 'Tyrosine';
  if (codon === 'UGU') return 'Cysteine';
  if (codon === 'UGC') return 'Cysteine';
  if (codon === 'UGG') return 'Tryptophan';
  if (codon === 'UAA') return 'STOP';
  if (codon === 'UAG') return 'STOP';
  if (codon === 'UGA') return 'STOP';

  throw new Error('Invalid codon');
}