suc::Int->Int | suc x = x + 1
ant::Int->Int | ant x = x - 1

mult::Int->Int->Int
mult _ 0 = 0
mult x 1 = x
mult x y = x + mult x (ant x)
mult x y = soma x (mult x (ant y))

soma::Int->Int->Int
soma x 0 = x
soma x y = soma(suc x) (ant y)
soma 3 2
