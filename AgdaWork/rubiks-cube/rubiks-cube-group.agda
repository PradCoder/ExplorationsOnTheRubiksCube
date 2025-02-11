module rubiks-cube-group where

open import Data.Bool
open import Relation.Binary.PropositionalEquality
open import Relation.Nullary

data Word (A : Set) : Set where
    [] : Word A
    _∷⁺_ : A → Word A → Word A
    _∷⁻_ : A → Word A → Word A

infixr 10 _∷⁺_ _∷⁻_

data Move : Set where
    L R U D F B : Move

data IsReduced {A : Set} : Word A → Set where
    []-reduced : IsReduced []
    neg : ∀ {x} → IsReduced (x ∷⁻ [])
    pos : ∀ {x} → IsReduced (x ∷⁺ [])
    neg-neg : ∀ {x y xs} → IsReduced (y ∷⁻ xs) → IsReduced (x ∷⁻ y ∷⁻ xs)
    pos-pos : ∀ {x y xs} → IsReduced (y ∷⁺ xs) → IsReduced (x ∷⁺ y ∷⁺ xs)
    neg-pos : ∀ {x y xs} → ¬ (x ≡ y) → IsReduced (y ∷⁺ xs) → IsReduced (x ∷⁻ y  ∷⁺ xs)
    pos-neg : ∀ {x y xs} → ¬ (x ≡ y) → IsReduced (y ∷⁻ xs) → IsReduced (x ∷⁺ y  ∷⁻ xs)


commutator : Word Move
commutator = R ∷⁺ U ∷⁺ R ∷⁻ U ∷⁻ []

_ : IsReduced commutator
_ = pos-pos (pos-neg (λ { () }) (neg-neg neg)) 