---
title: Speaker notes
author: Pesara
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

To show that the three conditions are necessary. We only need to show they hold for the solved states, we transform the basic moves to defined position vectors mentioned, the solved state configuration is the position vector defined by the identity permutation for the cyclic groups with the 0 vectors for the position of the color cubies wrt to the primary orientation, and we check the conditions are satisfied

1) Each permutation is a 4-cycle which is odd and has sign -1
2) The sumo of the components of each corner orientation is 0 mod 3
3) The sum of the components of each edge orientation is 0 mod 2

If we have a legal configuration with a position vector satisfying the 3 conditions then after applying one of the basic moves they remain satisfied
Is satisfied as all moves cause 4 cycles in the corner and edge cubbies
For the basic moves U and D do not change, RLFB simultaneously cause two components to increase by 1 and two components to decrease by 1 preserving 0 mod 3
Remains satisfied as UDFB do not change the position values of the edges mod 2, while RL does increasing two components while reducing two components by 1 mod 2
Since we can obtain every legal configuration from the solved state through legal moves 1-3 is satisfied in every configuration

To show that the three conditions are sufficient, we show that any position vector satisfying the three properties can be solved using legal cube moves. So applying a strategy to solve a cube is sufficient for this part

i) For condition 1 (or locating is possible):  WLOG we can assume sign($\rho$) = sign($\sigma$) = 1, if not apply a quarter turn to get the parity, this implies the permutation of corner cubbies is even, and can be restored to their home location using 3 cycles, same for the edge cubies. If we perform any 3-cylce of corners or edges the we can restor the cubbies to their homes locations. Call this new config X', Since the basic cube moves preserve conditions (a)-(c) then the position vector ($\rho',\sigma',v',w'$) for X' satisfies these conditions, and in this case $\rho' = \epsilon$, $\sigma ' = \epsilon$, All that remains is to show we can twist the cubbies into their proper orientations
ii) For condition 2 and 3 (or orienting is possible): condition 3 says that an even number of edge pieces need to be flipped and we have moves to flip any pair of edges then we can solve all the edge cubbies. Condition b) says the number of cw corners = ccw corners mod 3, so twist any cw or ccw pairs into their home orientation, the resulting cube will have all corners twisted in triples 3 cw and 3 ccw, which can be solved using corner twisting moves.
Which show X is solvable. Which finishes the proof


# Relation to MATH 4GR3

In this section we discuss how the Fundamental Theorem of Cubology relates to the content covered in MATH 4GR3.

- Commutators as a subgroup of moves that partially commute

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

# Sage construction
$$R=S48("(25,27,32,30)(26,29,31,28)(3,38,43,19)(5,36,45,21)(8,33,48,24)")$$
$$L=S48("(9,11,16,14)(10,13,15,12)(1,17,41,40)(4,20,44,37)(6,22,46,35)")$$
$$U=S48("(1,3,8,6)(2,5,7,4)(9,33,25,17)(10,34,26,18)(11,35,27,19)")$$
$$D=S48("(41,43,48,46)(42,45,47,44)(14,22,30,38)(15,23,31,39)(16,24,32,40)")$$
$$F=S48("(17,19,24,22)(18,21,23,20)(6,25,43,16)(7,28,42,13)(8,30,41,11)")$$
$$B=S48("(33,35,40,38)(34,37,39,36)(3,9,46,32)(2,12,47,29)(1,14,48,27)")$$
