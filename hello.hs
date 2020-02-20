main = do
  print "Hello World!"

simple x = x

calcChange owed given =
  if change > 0
    then change
    else 0
  where
    change = given - owed

doubleDouble t = (\x -> x * 2) ((\x -> x * 2) t)

teams = ["red", "yellow", "orange", "blue", "purple"]

isPalindrome word = word == reverse word
