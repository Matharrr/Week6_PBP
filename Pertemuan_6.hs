{-
1. Buatlah fungsi cek nilai dengan ketentuan sebagai berikut :
“A” : 80-100, “AB” : 75-79, “B” : 70-74, “BC” : 65-69, ”C” : 60-64, “D” : 50-59, otherwise E
-}
cekNilai :: Int -> String
cekNilai x
    | x >= 80 && x <= 100 = "A"
    | x >= 75 && x <= 79 = "AB"
    | x >= 70 && x <= 74 = "B"
    | x >= 65 && x <= 69 = "BC"
    | x >= 60 && x <= 64 = "C"
    | x >= 50 && x <= 59 = "D"
    | otherwise = "E"

{-
2. Tuliskan sebuah fungsi “gcde” yang menghitung pembagi bilangan terbesar antara x dan y 
dengan algoritma euclidiancemenggunakan bahasa functional programming. 
Algoritma tersebut didefinisikan sebagai berikut :
    if x = y then return x (or y),
    otherwise gcd(x, y) = gcd(x – y, y) where x > y
-}
gcde :: Int -> Int -> Int
gcde x y
    | x == y = x
    | x > y = gcde (x-y) y
    | otherwise = gcde x (y-x)

{-
3. Buatlah sebuah fungsi checkEvenOddPosNeg menggunakan haskell untuk mengecek apakah 
bilangan yang diinputkan termasuk (dapat menggunakan fungsi odd / even):
    ● “Ganjil Positif”
    ● “Ganjil Negatif”
    ● “Genap Positif”
    ● “Genap Negatif” 
-}
checkEvenOddPosNeg :: Int -> String
checkEvenOddPosNeg x
    | odd x && x > 0 = "Ganjil Positif"
    | odd x && x < 0 = "Ganjil Negatif"
    | even x && x > 0 = "Genap Positif"
    | even x && x < 0 = "Genap Negatif"
    | otherwise = "Bilangan Nol"

{-
4. Buatlah sebuah fungsi cekPrime menggunakan haskell untuk mengecek apakah 
bilangan positif yang di input prime atau tidak ?
-}
cekPrime :: Int -> Bool
cekPrime x
    | x <= 1 = False
    | otherwise = cekPrime' x (x-1)
    where
        cekPrime' x y
            | y == 1 = True
            | mod x y == 0 = False
            | otherwise = cekPrime' x (y-1)

{-
5. Buatlah sebuah fungsi yang membalikan normalisasi (min = 0 max =1) dari:
    xnew = (x – min(x)) / (max(x) – min(x))
-}
normalisasi :: [Int] -> [Float]
normalisasi x = [fromIntegral (x' - minx) / fromIntegral (maxx - minx) | x' <- x]
    where
        minx = minimum x
        maxx = maximum x

{-
6. Buatlah sebuah fungsi listPrime menggunakan haskell untuk mengembalikan 
semua bilangan prima < n ? (modifikasi jawaban soal no 4) list comprehension
-}
listPrime :: Int -> [Int]
listPrime n = [x | x <- [1..n], cekPrime x]
