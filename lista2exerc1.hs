max3::Int->Int->Int->Int
max3 x y z | x>z && x>y = x
           | y>x && y>z = y
           | otherwise = z
