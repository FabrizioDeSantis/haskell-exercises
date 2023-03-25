-- haskell function to check which right triangle has integers for all sides
-- and all sides equal or smaller than 10
-- has a perimeter of 24
-- this problem is solved with comprehension

getTriangle = [(a, b, c) | a<-[1..10], b<-[a..10], c<-[b..10], a+b+c==24, c^2==a^2+b^2]