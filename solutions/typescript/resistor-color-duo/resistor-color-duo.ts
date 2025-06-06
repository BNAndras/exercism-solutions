enum ResistorValue {
    black,
    brown,
    red,
    orange,
    yellow,
    green,
    blue,
    violet,
    grey,
    white,
}

type BandColor = keyof typeof ResistorValue;

export function decodedValue([first, second]: BandColor[]): number {  
  return ResistorValue[first] * 10 + ResistorValue[second];  
}