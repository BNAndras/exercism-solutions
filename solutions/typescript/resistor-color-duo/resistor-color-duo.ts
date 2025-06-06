enum ResistorValue {
    black = 0,
    brown = 1,
    red = 2,
    orange = 3,
    yellow = 4,
    green = 5,
    blue = 6,
    violet = 7,
    grey = 8,
    white = 9,
}

export type BandColor = keyof typeof ResistorValue;

export function decodedValue([first, second]: BandColor[]): number {  
  return ResistorValue[first] * 10 + ResistorValue[second];  
}