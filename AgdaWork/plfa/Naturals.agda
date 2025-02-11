import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl)
open Eq.≡-Reasoning using (begin_; step-≡-∣; _∎)

module plfa.Naturals where

data ℕ : Set where
    zero : ℕ
    suc  : ℕ → ℕ

seven = suc (suc (suc (suc (suc (suc (suc zero))))))

_+_ : ℕ → ℕ → ℕ
zero + n = n
(suc m) + n = suc (m +  n)

{-# BUILTIN NATURAL ℕ #-}

_ : 2 + 3 ≡ 5
_ = 
    begin
        2 + 3
    ≡⟨⟩
        (suc (suc zero)) + (suc (suc (suc zero)))
    ≡⟨⟩
        suc ((suc zero) + (suc (suc (suc zero))))
    ≡⟨⟩
        suc (suc (zero + (suc (suc (suc zero)))))
    ≡⟨⟩
        suc (suc (suc (suc (suc zero))))
    ≡⟨⟩
        5
    ∎

_ : 2 + 3 ≡ 5
_ =
    begin
        2 + 3
    ≡⟨⟩
        suc (1 + 3)
    ≡⟨⟩
        suc (suc (0 + 3))
    ≡⟨⟩
        suc  (suc 3)
    ≡⟨⟩
        5
    ∎

_ : 3 + 4 ≡ 7
_ = 
    begin
        3 + 4
    ≡⟨⟩
        suc (2 + 4)
    ≡⟨⟩
        suc (suc (1 + 4))
    ≡⟨⟩
        suc (suc (suc (0 + 4)))
    ≡⟨⟩
        suc (suc (suc 4))
    ≡⟨⟩
        7
    ∎

_ : 2 + 3 ≡ 5
_ = refl

_*_ : ℕ → ℕ → ℕ
zero    * n = zero
(suc m) * n = n + (m * n)

_ =
    begin
        2 * 3
    ≡⟨⟩
        3 + (1 * 3)
    ≡⟨⟩
        3 + (3 + (0 * 3))
    ≡⟨⟩
        3 + (3 + 0)
    ≡⟨⟩
        6
    ∎

_ = 
    begin
        3 * 4
    ≡⟨⟩
        4 + (2 * 4)
    ≡⟨⟩
        4 + (4 + (1 * 4))
    ≡⟨⟩
        4 + (4 + (4 + (0 * 4)))
    ≡⟨⟩
        4 + (4 + (4 + 0))
    ≡⟨⟩
        12
    ∎

_^_ : ℕ → ℕ → ℕ
m ^ 0 = 1
m ^ (suc n) = m * (m ^ n)

_ = 
    begin
        3 ^ 4
    ≡⟨⟩
        3 * (3 ^ 3)
    ≡⟨⟩
        3 * (3 * (3 ^ 2))
    ≡⟨⟩
        3 * (3 * (3 * (3 ^ 1)))
    ≡⟨⟩
        3 * (3 * (3 * (3 * (3 ^ 0))))
    ≡⟨⟩
        3 * (3 * (3 * (3 * 1)))
    ≡⟨⟩
        81
    ∎

_∸_ : ℕ → ℕ → ℕ
m     ∸ zero = m
zero  ∸ suc n = zero
suc m ∸ suc n = m ∸ n

_ =
    begin
        3 ∸ 2
    ≡⟨⟩
        2 ∸ 1
    ≡⟨⟩
        1 ∸ 0
    ≡⟨⟩
        1
    ∎



data Bin : Set where
    ⟨⟩ : Bin
    _O : Bin → Bin
    _I : Bin → Bin

inc : Bin → Bin
inc ⟨⟩ = ⟨⟩
inc (x O) = x I
inc (x I) = (inc x) O

dec : Bin → Bin
dec ⟨⟩ = ⟨⟩
dec (⟨⟩ O) = ⟨⟩ O
dec (⟨⟩ I) = ⟨⟩ O
dec (⟨⟩ O I) = ⟨⟩ I
dec (⟨⟩ O O) = ⟨⟩ O
dec (⟨⟩ I O) = ⟨⟩ I
dec ((x O) O) = (dec x O) I
dec (((x O) I) O) = (((x O) O) I)
dec (((x I) I) O) = (((x I) O) I)
dec ((x O) I) = ((x O) O)
dec ((x I) I) = ((x I) O)


addB : Bin → Bin → Bin
addB (⟨⟩) y = y
addB x (⟨⟩) = x
addB (x O) (y O) = (addB x y) O
addB (x I) (y O) = (addB x y) I 
addB (x O) (y I) = (addB x y) I 
addB (x I) (y I) = inc (addB x y) O

to : ℕ → Bin
to 0 = ⟨⟩ O
to (suc a) = addB (to a) (⟨⟩ I)

shiftR : Bin → Bin
shiftR ⟨⟩ = ⟨⟩
shiftR (a O) = a
shiftR (a I) = a

from : Bin → ℕ
from ⟨⟩ = 0
from (⟨⟩ O) = 0
from (⟨⟩ I) = suc 0 
from (a O) = (2 * (from a)) + 0
from (a I) = (2 * (from a)) + 1