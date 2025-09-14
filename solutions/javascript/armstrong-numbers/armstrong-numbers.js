export const isArmstrongNumber = (number) => {
  const bigNumber = BigInt(number)
  const digits = bigNumber.toString().split('').map(Number)
  return bigNumber == digits.reduce(
    (acc, digit) => acc + BigInt(digit) ** BigInt(digits.length),
    BigInt(0)
  );
};
