
module Commons where
    
alphabet = "etaoinsrhdlucmfywgpbvkxqjz"

factors n = 
    [ x | x <- [ 1..n ], mod n x == 0 ]

prime n =
    factors n == [ 1, n ]

primes =
    take (length alphabet) [ x | x <- [ 1.. ], prime x ]