max3::Int->Int->Int->Int
max3 x y z = maximo (maximo x y) z

maximo::Int->Int->Int
maximo x y | x>y = x 
           | otherwise = y
