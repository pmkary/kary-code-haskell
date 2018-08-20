
module Decode where

import Commons
import Data.List
import Data.List.Split

-- tools

primesToAlhpabetTuple =
    zip primes alphabet
    
mapPrimeToAlphabet p =
    [ snd x | x <- primesToAlhpabetTuple, fst x == p ]

-- decode word

decodeWord word =
    [ mapPrimeToAlphabet x |
        x <- factors (read word :: Int), prime x ]

-- decode sentense

decodeSentence sentence =
    [ decodeWord x | x <- splitOn "-" sentence ]