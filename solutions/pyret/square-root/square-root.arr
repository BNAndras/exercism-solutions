use context essentials2020 # Don't delete this line when using Pyret on Exercism 

provide: square-root end

fun square-root(number):
  rec do-square-root = lam(n):
    ask:
      | num-expt(n, 2) <> number then:
        do-square-root(n + 1)
      | otherwise:
        n
    end
  end   
  
  do-square-root(0)
end