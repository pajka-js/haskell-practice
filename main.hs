absolutna x = if x < 0 then x*(-1) else x

absolutnaGE x | x < 0 = x*(-1)
              | otherwise = x

znamienko x = if x < 0 then -1 else if x == 0 then 0 else 1

znamienkoGE x | x < 0 = -1
              | x == 0 = 0
              | otherwise = 1

mocnina a n = if n == 0 then 1 else a * mocnina a (n-1)

mocninaGE a n | n == 0 = 1
              | a == 0 = 1      
              | n < 0 = a * mocninaGE a (absolutnaGE n)
              | otherwise = a * mocninaGE a (n-1)

main = do
  -- return
  {-
  comment
  -}

  print(mocninaGE 5 2)