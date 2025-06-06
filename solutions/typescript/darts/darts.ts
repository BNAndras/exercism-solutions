export function score(x: number, y: number): number {
  const distance = Math.sqrt(x * x + y * y);

  if (distance <= 1) {
    return 10;
  }
  
  if (distance <= 5) {
    return 5;
  }

  if (distance <= 10) {
    return 1;
  }

  return 0;
}
