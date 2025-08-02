```agda
{-# OPTIONS --without-K --safe #-}

Type = Set

data Bool : Set where
    true false : Bool

-- Type "→" as "\to" or "\->"
not : Bool → Bool
not true = false
not false = true

idBool : Bool → Bool
idBool x = x

idBool' : Bool → Bool
idBool' = λ (x : Bool) → x

-- The following is π type
id' : (X : Type) → X → X
id' X x = x


--Implicit
id : {X : Type} → X → X
id x = x


idBool'' : Bool → Bool
idBool'' = id' Bool

-- "propostions as types "mathematical statements as types"
example : {P Q : Type} → P → (Q → P)
example {P} {Q} p = f
    where
        f : Q → P
        f _ = p

example' : {P Q : Type} → P → (Q → P)
example' p = λ q → p

-- open import binary-products
{-
import Relation.Binary.PropositionalEquality as Eq
open Eq using (_≡_; refl; cong; sym)
open Eq.≡-Reasoning using (begin_; step-≡-∣; step-≡-⟩; _∎)
open import Data.Nat using (ℕ; zero; suc; _+_; _*_; _∸_; _^_)

open import Data.Nat using (ℕ; zero; suc)
open import Data.Empty using (⊥; ⊥-elim)
open import Data.Sum using (_⊎_; inj₁; inj₂)
open import Data.Product using (_×_; proj₁; proj₂) renaming (_,_ to ⟨_,_⟩)

-- TODO : Need to define × 
-- "x" is "ad" in propositions as types
ex : {P Q : Type} → P × Q → Q × P
ex (p, q) = (q, p)

-}
-- \bN
data ℕ : Type where
    zero : ℕ
    suc : ℕ → ℕ

three : ℕ
three = suc (suc (suc zero))

{-# BUILTIN NATURAL ℕ #-}

three' : ℕ
three' = 3 -- synonym for the above

D : Bool → Type
D true = ℕ
D false = Bool

-- "mix-fix" operator (3rd sense of "_" in Agda)
--                           b      x   y
if_then_else_ : {X : Type} → Bool → X → X → X
if true then x else y = x
if false then x else y = y

```