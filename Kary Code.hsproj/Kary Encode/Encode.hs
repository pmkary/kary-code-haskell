
module Encode where

import Commons
import Data.List
import Data.List.Split

-- tools

alphabetToPrimeMap =
    zip alphabet primes
    
mapCharToPrime c =
    head [ snd x |
            x <- alphabetToPrimeMap, fst x == c ]
    
-- encode word
 
encodeWord word =
    product [ mapCharToPrime x | x <- word ]
    
-- encode sentense

encodeSentence sentence =
    intercalate "-" 
        [ show (encodeWord x) |
            x <- splitOn " " sentence ]
