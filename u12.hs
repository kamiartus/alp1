powerset ::  [a] -> [[a]]
powerset [] =  [[]]
powerset (x:xs)  =  powerset' ++ [x:ys | ys <- powerset']
  where
    powerset' = powerset xs                 
