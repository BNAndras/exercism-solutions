namespace TwoFer

def twoFer (name : Option String) : String :=
  "One for " ++ name.getD "you" ++ ", one for me."

end TwoFer
