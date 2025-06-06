export function isPangram(word: string) : boolean {
  const regex = new RegExp(/[^a-z]/g)
  const reduced = word.toLowerCase()
                      .replace(regex, "");
  return new Set(reduced).size === 26;
}
