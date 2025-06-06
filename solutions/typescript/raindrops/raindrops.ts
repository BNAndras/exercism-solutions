export function convert(drops: number): string {
  let converted = ''

  if (drops % 3 === 0) {
    converted += 'Pling'
  }
  if (drops % 5 === 0) {
    converted += 'Plang'
  }
  if (drops % 7 === 0) {
    converted += 'Plong'
  }

  if (!converted) {
    return drops.toString()
  }
  
  return converted
}