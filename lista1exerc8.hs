suc::Int->Int  
suc x = x + 1

ant::Int->Int
ant x = x - 1

soma::Int->Int->Int
soma x 0 = x
soma x y = soma (suc x) (ant y)

mult::Int->Int->Int
mult _ 0 = 0
mult x 1 = x
mult x y = soma x (mult x (ant y))

dobrolist::[Int]->[Int]
dobrolist [] = []
dobrolist (x:xs) = (mult2 x) : 
                   dobrolist xs

mult2::Int->Int
mult2 = mult 2
