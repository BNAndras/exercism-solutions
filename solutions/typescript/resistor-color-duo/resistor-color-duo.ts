export function decodedValue([band1, band2]: Array<string>): number {
  if (!(COLORS.includes(band1) && COLORS.includes(band2))) {
    throw new Error(`Invalid bands passed to ${decodedValue.name}(${band1}, ${band2}).`);
  }
  
  const value1 = COLORS.indexOf(band1);
  const value2 = COLORS.indexOf(band2);
  return Number(`${value1}${value2}`)
}

export const COLORS = [
  "black",
  "brown",
  "red",
  "orange",
  "yellow",
  "green",
  "blue",
  "violet",
  "grey",
  "white",
];