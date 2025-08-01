```agda
{-# OPTIONS --without-K --safe #-}

Tyep = Set

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

foo : (x : ?) → _

```