--A1
twoPow :: Float -> Float
twoPow = \x->2**x

fgh = \x f g h-> f(g(h(x)))

rev :: [a] -> [a]
rev xs = foldl (\x xs -> xs : x) [] xs

--A2
fix f = f (fix f)
collatz :: (Integer -> [Integer]) -> Integer -> [Integer]
collatz = \r c -> if (c==1) then [c] else  c:( r (if (mod c 2)==0 then (div c 2) else (3*c+1)))

test11 = twoPow 4
test12 = twoPow 17
test13 = fgh 5 (1-) (2/) (2*)
test14 = fgh 2 (8-) (2^) (3+)
test15 = rev "123a5"
test16 = rev test21
test21 = fix collatz 10
test22 = fix collatz 97
