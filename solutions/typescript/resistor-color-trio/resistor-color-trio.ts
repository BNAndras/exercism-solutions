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

export function decodedResistorValue([band1, band2, band3]: Array<string>) : string {
  const value1 = COLORS.indexOf(band1);
  const value2 = COLORS.indexOf(band2);
  const value3 = COLORS.indexOf(band3);
  
  let val =  Number(`${value1}${value2}${"0".repeat(value3)}`);
  let unit = "ohms";
  if (val >= 1000) {
    val = val / 1000;
    unit = "kiloohms";
  }
  return `${val} ${unit}`;
}
