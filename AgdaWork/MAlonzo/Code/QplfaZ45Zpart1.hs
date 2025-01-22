{-# LANGUAGE BangPatterns #-}
{-# LANGUAGE EmptyCase #-}
{-# LANGUAGE EmptyDataDecls #-}
{-# LANGUAGE ExistentialQuantification #-}
{-# LANGUAGE NoMonomorphismRestriction #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE ScopedTypeVariables #-}

{-# OPTIONS_GHC -Wno-overlapping-patterns #-}

module MAlonzo.Code.QplfaZ45Zpart1 where

import MAlonzo.RTE (coe, erased, AgdaAny, addInt, subInt, mulInt,
                    quotInt, remInt, geqInt, ltInt, eqInt, add64, sub64, mul64, quot64,
                    rem64, lt64, eq64, word64FromNat, word64ToNat)
import qualified MAlonzo.RTE
import qualified Data.Text

-- plfa-part1.ℕ
d_ℕ_2 = ()
data T_ℕ_2 = C_zero_4 | C_suc_6 Integer
-- plfa-part1.seven
d_seven_8 :: Integer
d_seven_8 = coe (7 :: Integer)
-- plfa-part1._+_
d__'43'__10 :: Integer -> Integer -> Integer
d__'43'__10 v0 v1
  = case coe v0 of
      0 -> coe v1
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe
             (coe
                addInt (coe (1 :: Integer)) (coe d__'43'__10 (coe v2) (coe v1)))
-- plfa-part1._*_
d__'42'__26 :: Integer -> Integer -> Integer
d__'42'__26 v0 v1
  = case coe v0 of
      0 -> coe (0 :: Integer)
      _ -> let v2 = subInt (coe v0) (coe (1 :: Integer)) in
           coe (coe d__'43'__10 (coe v1) (coe d__'42'__26 (coe v2) (coe v1)))
