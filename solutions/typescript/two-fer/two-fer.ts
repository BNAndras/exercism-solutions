type Name = string;

export function twoFer(person: Name = "you"): string {
  return `One for ${person}, one for me.`; 
}
