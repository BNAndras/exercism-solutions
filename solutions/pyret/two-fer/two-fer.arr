provide: two-fer end

fun two-fer(name :: String) -> String:
  new-name = ask:
    | name == "" then:
      "you"
    | otherwise:
      name
  end
  
  "One for " + new-name + ", one for me."
end
