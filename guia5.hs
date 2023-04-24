-- 1.
-- 1)
longitud:: [Int] -> Int 
longitud(_:xs) | xs==[] = 1
               | otherwise = 1 + longitud xs
--2)
ultimo:: [Int] -> Int 
ultimo s | tail s == [] = head s 
         |otherwise = ultimo (tail s)

--3) 


--4)

problemaReverso:: [Int] -> [Int]
problemaReverso(x:xs)| xs==[] = [x]  
                     |otherwise = problemaReverso xs ++ [x] 

problemaReverso1:: [Int] -> [Int]
problemaReverso1 s | s==[] = []
                   | otherwise= problemaReverso1 (tail s) ++ [head s]

--2. 
--1) 
pertenece:: (Eq t)=> t -> [t] -> Bool 
pertenece x s |s==[] = False  
              |x== head s = True 
              | otherwise= pertenece x (tail s)
--2) 
todosIguales:: [Int] -> Bool 

--3)
todosDistintos:: [Int] -> Bool 
todosDistintos [] = True 
todosDistintos (x:xs) | pertenece x xs = False 
                    | otherwise = todosDistintos xs 
