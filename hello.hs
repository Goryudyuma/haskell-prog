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

ackermann 0 n = n + 1
ackermann m 0 = ackermann (m - 1) 1
ackermann m n = ackermann (m - 1) $ ackermann m (n - 1)

collatz 1 = 1
collatz n =
  if even n
    then 1 + collatz (n `div` 2)
    else 1 + collatz (n * 3 + 1)

myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

fib 0 = 0
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

fib' = fastFib 1 1

fastFib _ n2 1 = n2
fastFib n1 n2 counter = fastFib (n1 + n2) n1 (counter - 1)

myProduct a = foldl (*) 1 a
