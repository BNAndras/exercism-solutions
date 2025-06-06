const alphabet = [...'abcdefghijklmnopqrstuvwxyz']

export function isPangram(phrase: string) : boolean {
  phrase = phrase.toLowerCase()
  return alphabet.every(letter => phrase.includes(letter));
}