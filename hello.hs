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

myTail aList =
  case aList of
    (x:xs) -> xs
    _ -> []

myGCD a b =
  case (a, b) of
    (a, 0) -> a
    (a, b) -> myGCD b $ a `mod` b
