---
title: Speaker notes
author: Tony Xu 400370837
date: \today
# linestretch: 1.25
fontsize: 12pt
#boxlinks: true
toccolor: blue
linkcolor: blue
urlcolor: blue
citecolor: blue
pagestyle: headings
papersize: a4
geometry:
  - top = 30mm
  - bottom = 30mm
  - left = 30mm
  - right = 30mm
# numbersections: true
# toc: true
autoLabelEqns: true
header-includes: |
  \usepackage{amsmath}
  \usepackage{amssymb}
  \usepackage{amsthm}
  \usepackage{geometry}
  \newcommand{\pb}{\pagebreak}
  \renewcommand{\qed}{\hfill$\square$}
  \DeclareMathOperator{\ord}{ord}
---
# Proof of the Fundamental Theorem
The Fundamental theorem of cubology is proved in the forwards direction and the backwards direction
($\implies$)

($\consequece$)
# Relation to MATH 4GR3

In this section we discuss how the Fundamental Theorem of Cubology relates to the content covered in MATH 4GR3.

- Commutators as a subgroup of moves that partially commute

$$R=S48("(25,27,32,30)(26,29,31,28)(3,38,43,19)(5,36,45,21)(8,33,48,24)")$$
$$L=S48("(9,11,16,14)(10,13,15,12)(1,17,41,40)(4,20,44,37)(6,22,46,35)")$$
$$U=S48("(1,3,8,6)(2,5,7,4)(9,33,25,17)(10,34,26,18)(11,35,27,19)")$$
$$D=S48("(41,43,48,46)(42,45,47,44)(14,22,30,38)(15,23,31,39)(16,24,32,40)")$$
$$F=S48("(17,19,24,22)(18,21,23,20)(6,25,43,16)(7,28,42,13)(8,30,41,11)")$$
$$B=S48("(33,35,40,38)(34,37,39,36)(3,9,46,32)(2,12,47,29)(1,14,48,27)")$$

Note that when anlalyzing permutations, certaine moves sequences are more effective than others. For instance the moves done by commutators.
Consider for instance $y$ and $h$ are moves that fail to commute with each other by "just a little bit",
then $[g,h]$ will be close to the identity (i.e. the solved state). For example a permutation $\alpha \in S_{n}$ we define the fixed set of $\alpha$ to be the set of all numbers in
$$[n] = \{1,2,3,4,\dots,n\}$$
that are not moved as
$$fix(\alpha) = \{m \in [n] | \alpha(m) = m\}$$ 

the ones that are moved, is the compliment of this set, which we denote by $mov(\alpha)$
$$mov(\alpha) = \overline{fix(\alpha)} = \{m \in [n] | \alpha(m) \neq m\}$$
(Note: the moved set is sometimes known as the support of $\alpha$ denoted $supp(\alpha)$).

In terms of permutation puzzles $mov(\alpha)$ is the list of all the positions of the pieces that are moved when $\alpha$ is applied.

We note that in the rubik's cube group we have the following commutator for instance, followed by a commutator that
can be used to adjust the move done by the commutator by changing the elements permuted, the type (structure on the move) is essentially
the same but different pieces are moved

![Commutator and it's conjugate](<commutator_conjugation_1.png>)\
For 14.1a) the move is a commutator (call this set of moves $x$) b)the conjugate is $bxb^{-1}$

- Conjugation as a group action on the Rubik's Cube
It is noticable from there that by using 4 basic types of moves and there conjugates we can solve any rubik's cube configuration. 
![The four basic moves](<basic_moves.png>)\


- Centers of the group (the trivial identity and the super flip )
Given Commutators and Conjugates exist, we can try to define a center of the rubik's cube group, it is known that there are exactly 2 centers for the
rubik's cube group, one is the identity (or solved state of the cube), the other is the superflip, which is achieved via this permutation
