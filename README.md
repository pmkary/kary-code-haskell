
# Kary Code in Haskell

Kary Code is a very simple traditional cryptography method that for each word, maps the characters to prime numbers and then computes the product of the prime numbers representing the word. After factoring the computed product, the number of instances of a given prime will indicate the number of times the character that got mapped to the prime in the first place was used within the word and one gets to decipher the code.

This implementation is done in Haskell as [Haskell for Mac](http://haskellformac.com/) playground, so you'll need to have it in order to run it.

Also keep in mind that I only wrote it to learn Haskell and this is by no way any useful code. However, I find it a very beautiful code, since it includes a very clean code that leverages many of Haskell's tricks.

![](https://user-images.githubusercontent.com/2157285/44369779-d5bd7300-a4ec-11e8-9124-997def75081f.png)
