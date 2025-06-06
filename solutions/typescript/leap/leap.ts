export function isLeap(year: number) : boolean {
  return isEvenlyDivisible(year, 4) && (!isEvenlyDivisible(year, 100) || isEvenlyDivisible(year, 400));
}

function isEvenlyDivisible(n1 : number, n2 : number) : boolean {
  return n1 % n2 == 0;
}