---
title: MATH 4GR3 Project On Rubiks Cubes
---

# Abstract *

The rubiks cube is perhap's the world's most famous puzzle, or certainly an iconic one at that. It is widely believed to have been first concieved by Hungarian Professor of Architecture Erno Rubik in an attempt to demonstrate 3-Dimensional Design, in Particular 3-Dimensional motion, to his students. He was also the first to come up with a solution to the puzzle (conceived after one month of inventing). Since it's rise to popularity, it has entertained the minds of many people, some of whom were mathematicians. It's first rigorous mathematical analysis was done by British-American Mathemetician David Singmaster, though solutions were known to a number of mathematicians by then (Such as J.H. Conway and Roger Penrose) [https://www.youtube.com/watch?v=DtYr_3h0Ubw]. 

In this project we discuss the motivation to consider the Rubiks cube as a mathematical object, It's modelling, and as such the results that arise from it's modelling for instance the contruction of the Illegal Rubik's Cube Group, the subset of which is the Legal Rubik's Cube Group, which can be seen as a consequence of the fundamental theorems of Cubology (according to sources this varies). After the derivation and construction of the model with which we are working with we look into how to solve the rubik's cube. Note we are essentially considering only the 3x3x3 cube.

# Attempting to Understand the Cube *

What is it that we are essentially trying to understand with the cube as it is presented? Well when we consider the appearance of the Rubik's cube
Rubiks cube group (How we derive the group for modeling the cube), For starters take into account that the Rubik's cube is composed of 26 mechanical pieces (called cubies) held together, Furthermore we note we have 
 - 8 corner cubies
 - 12 edge cubies
 - 6 Center cubies
 - $9 \times 6 = 54$ Facets (small faces)
 (Insert a picture of the three type of cubies -- ?)
Note that regardless of motion the 6 center cubes stay fixed. We start counting the the possible configurations of the cubes.


## Combinatorics * 

[https://www.sfu.ca/~jtmulhol/math302/puzzles-rc-cubology.html, Daniels' project, Bandelow]

We count the total number of configurations given the established types of cubies
- There are 8 cubies, and hence 8! ways of arranging them
- There are 12 edge cubies, and hence 12! ways of arranging those
- There are 3 colors per each corner cubie, 3^{8} ways of arranging those
- There are 2 colors per each edge cubie, 2^{12} ways of arranging those

Multiplying these numbers together we get 
$8!\cdot 12! \cdot 3^{8} \cdot 2^{12} = 519024039293878272000$
This consists of the illegal arrangement of the elements in the Rubik's cube group.
We will note how to construct the legal rubix cube group as a subset of this.

We note that the rubik's cube group is a subset of $S_{54}$ as it provides $54$ facets with permutations.


## Construction of the illegal Rubik cube group
[Daniel's project]

### Preliminaries

1. Direct products (External direct product)

2. Semi-direct products:

A Weaker version of an inner product where only one of the subgroups has to be normal

**Theorem** Let $G$ be a group with subgroups $H$ and $N$ such that

(1) $G = NH$

(2) $N \cap H = e$

(3) $N \triangleleft G$
[keith conrad, semidirect products]

3. Wreath products:

The wreath products of two groups G and H is constructed by: 

1. Write H as a permutation on n items

2. Make n copies of the group G. $(G^n)$

3. H acts on the copies of G by permuting the elements.

The wreath product of G by H is a semi-direct product of a direct products of n copies
of G by H.

The wreath product permutes the factors of G according to the action h on X. So if $x \in G$, then the wreath product would take components of G and shuffle them around according to the action h on the set X.

### Example of a wreath product: *

$G = \mathbb Z_2$, $H = S_3$, and $X = \{1,2,3\}$. The wreath product of G  by H is $\mathbb Z_2^3 \wr S_3$

So the elements of $\mathbb Z_2^3 \wr S_3$ are:

$$\{(0,0,0)\sigma,(1,0,0)\sigma,(0,1,0)\sigma,(0,0,1)\sigma,(1,1,0)\sigma,(0,1,1)\sigma,(1,0,1)\sigma,(1,1,1)\sigma\}$$

Where $\sigma \in S_3$

1. $1/2$ of the permutations of the edges and corners are possible since we require even permutations?

2. $1/2$ of the orientations of the edges are possible since the number of flipped edges has to be even.

3. $1/3$ of the corner orientations are possible. (Fundamental theorem of cubology b)


## Position Vectors

For a given configuration of a Rubik's Cube there exists a $4$ tuple $(\rho, \sigma, v, w))$ where $\rho \in S_8, \sigma \in S_{12}$ describe the permutations of the cubies and $v \in \mathbb Z_3^8, w \in \mathbb Z_2^{12}$ describe the orientations of the cubies.

## Notation *

The most popular set of notations are from Singmaster and we shall adopt them here, note that we label the face with respect to it lying
flat on a plane and one is facing front face)

- Let $U$ denote the upward (top) face.
- Let $F$ denote the front face.
- Let $L$ denote the left face.
- Let $R$ denote the right face.
- Let $B$ denote the back face.
- Let $D$ denote the downward (bottom) face
(insert picture here)

The capital letter represent a $90\degree$ turn clockwise facing that face. The inverse of each move would be the $90\degree$ rotation of the face counter-clockwise (denoted by a $M^{-1}$ in our adaptation where $M$ \in \{F,L,U,D,R,B \}$).

*Example*: The combunation of moves $UFR$ denotes a move consisting of $90\degree$ clowise turns done to the top, then front, and then the right face. The inverse of this is $R^{-1}F^{-1}U^{-1})$.

## The Rubiks cube Group *
[Daniels project, Singmaster Notes, Bandelow]

Recall, that the rubiks cube consists of $54$ facets, and the entire set of arrangements of the rubiks cube can be thought of as permutations of these 54 facets. Hence we can denote $G = \langle F,L,U,D,R,B\rangle \subset S_{54}$ as the called rubik's cube group.

Now note that not all arrangments of the permutations would lead to the valid arrangements of a rubik's cube, this group includes all cubes that can be taken apart and put together (the illegal rubiks' cube group), e.g. not pieces can alternate between being either corner and edge cubies, and those that can be reached by applying moves on the cube (the legal rubik's cube group).

Note that it is the case that the corner facets can be modelled as the cyclic group of 3 elements $C_{3}$ and since there are 8 of theese we note it is the corss product of $C_{3}$ eight times. 

Now, the possible arrangements of the corner cubes can be described using $S_{8}$ (since we are permuting those), which allows the postions of all the corner facets on the Rubik's Cube to be described as the group $C_{3}^{8} \wr S_{8}$.

By a similar argument we see that the  position of all the edge facets on the Rubik's Cube can be described by the group $C_{2}^{2} \wr s_{12}$.

### Definition of an illegal rubik's group *

Unlike the legal Rubik's cube group, the Illegal Rubik’s Cube Group allows the solver to take the cube apart and rearrange the facets.  However, we also notice that some orientations still will not be physically possible on the cube. We also notice that the Rubik's cube group is a subgroup of the illegal rubik's cube group.

So from the description of the corner and edge cubes, we can see that the illegal rubik's cube group is $I = (C^{12}_2 \wr S_{12}) \times (C^8_3 \wr S_8)$.



## Construction of the legal Rubix cube group *
[https://www.sfu.ca/~jtmulhol/math302/puzzles-rc-cubology.html]
^ Talk about this after the fundamental theorem of cubology?
Attempting to derive the legal rubik's cube group requires the construction of the Fundamential Theorem of Cubology, and the second fundamental theorem of cubology

<!-- ## Cayley Graph
Let G be a group with generating
set $\Gamma$, then the Cayley graph of $G$ with respect to $\Gamma$, denoted by
$Cay(G, \Gamma)$, is constructed as followsDaniels:

1. The vertices Cay(G, $\Gamma$) are the elements of G.

2. Two vertices $v,w \in G$ are adjacent $\iff$ there exists a $\gamma \in \Gamma$ such that $v = w \gamma$, so $vw^{-1} \in \Gamma$

3. The multiplicity (# of edges between 2 distinct vertices) of the edge ${v, w}$ in edge multiset $E$ is the
multiplicity of $vw^{−1}$ in $Γ$. -->

<!-- ## Multiset
A multiset is a collection of objects where items may appear in
the collection more than once. The number of times that an object
appears in the multiset is called the multiplicity of that element. If S
is a multiset, then $|S|$ is the number of objects in S. -->


### Rubiks Specific Theorems *

In this section, we will state the main theorem of our topic and any lemmas required to understand the main theorem.

## Theorem on Parity

Permutations can also be described in terms of their parity. Any length n
cycle of a permutation can be expressed as the product of 2-cycles.

The cube always has even parity, or an even number of cubies
exchanged from the starting position.


<!-- ## Lagrange's Theorem 

Let G be a finite group and let H be a subgroup of G. Then
$|G|/|H| = [G : H]$ is the number of distinct left cosets of H in G. In particular, the number
of elements in $H$ must divide the number of elements in $G$. -->

## Main Theorem: Fundamental Theorem of Cubology *
A move sequence is possible if and only if the following three conditions are satisfied, we also state the group theoretic formulation:

Note we are considering the following defintion of a postion of a facet of a cube:
 A position vector $(\rho,\sigma,v,w) \in S_{8} \times S_{12} \times C_{3}^{8} \times C_{2}^{12}$
-  The permutation of the corner cubies has the same parity as the permutation of the edge cubies 
$\Leftrightarrow$ 
$$\text{sign}(\rho) = \text{sign}(\sigma)$$

-  The number of corners that are twisted clockwise is equal to the number that are twisted counterclockwise modulo $3$
(meaning remaining corners twisted in the same direction occur in threes).
$\Leftrightarrow$
$$v_{1} + v_{2} +\dots +v_{8} = 0 (\text{mod } 3)$$
- The number of flipped edges is even.
$\Leftrightarrow$
$$w_{1} + w_{2} +\dots +w_{12} = 0 (\text{mod } 2)$$

## Summarized proof ?
 The first thing to show is that the three conditions are necessary, that is, they hold for any legal configuration. To do this we just need to show that if the conditions are satisfied for a configuration, then they also hold for the configuration obtained from it by twising one of the six faces. This involves just looking at the six cases individually, i.e the six faces.

Next we would need to show that if we had a configuration that satisfies the three conditions then the puzzle is solvable. Here is where our four basic moves come in handy. Let's recall them here for convenience. 

Since the corner and edge permutations have the same parity we can assume they are both even (otherwise twist any random face 90 degrees since this would multiply each by a 4-cycle which is odd). Since the corner permuation is even it is a product of 3-cycles, therefore the corners can be solved using 3-cycles. (We have a 3-cycle move that can be modified to cycle any 3 corner cubies on the puzzle.) Similarly, the edge permutation is even and can be solved using 3-cycles.

Now all cubies are in their correct cubicles. We now have to orient them to solve the puzzle. Condition (b) says that the number of clockwise corner twists is equal to the number of counterclockwise corner twists modulo 3
. So first twist any cw, ccw pairs into their solved positions. The result will be that all remaining corner twists will occur in triples: 3cw or 3ccw. These can be solved using our pairwise corner twisting moves. Finally, condition (c) says an even number of edges will be flipped. Luckily we have a move that will flip them in pairs. Therefore the puzzle can be solved. 

## Second Fundamental Theorem of Cubology *

An operation of the cube is possible if and only if the following are satisfied:
- The total number of edge and corner cycles of even length is even.
- The number of corner cycles twisted right is equal to the number of corner cycles
twisted left (up to modulo 3).
- There is an even number of reorienting edge cycles.

## Ultimate Result *
We can now effectively conclude that, 
$RC_{3} \cong (C_{3}^{7} \wr S_{8}) \times (C_{2}^{10} \wr S_{12})\subset (C_{3}^{7} \wr S_{8}) \times (C_{2}^{11} \wr S_{12}) \subset RC_{3}^{*} \cong C_{2}^{12} \times S_{8} \times C_{3}^{8} \times S_{8} \times S_{8}\subset S_{54}$ 

$RC_{3} \cong (C_{3}^{7} \wr S_{8}) \times (C_{2}^{10} \wr S_{12})$

# Algorithms

## A Modified version of the Bottom Up Approach

## Bottom Up Algorithm

A general and quite commonly used Rubik's Cube Solution is solving a cube layer by layer:

- Pick a face
- solve for the edges
- then solve corners
- Go down to the next layer solve for the edges (sisnce there are no corners)
- Go to the final layer, solve for the edge and solve corners

# Section 3 
In this section we will present a summarized proof of our main theorem, namely, the Fundamental Theorem of Cubology.

## Summarized Proof of the Fundamental Theorem of Cubology * (redundant)

<!-- Begin with the cube in a solved state, and number the cube as such:-->

![The numbering in question:](<Screenshot from 2024-03-08 10-56-32.png>)

Begin with a cube in any configuration. We add a "+" mark to each cubicle, where each cubicle can only have 1 of these "+" marks to 1 of their facets. There are a number of ways for doing this, so we will call the facet we mark for each cubicle the "primary facet".

For example:

![An example of an orientation:](<Screenshot from 2024-03-08 11-03-50.png>)


Then, we mark the remaining facets based on the primary facet. For an edge cubie, mark the sticker with a 0 
 if it is the primary facet, and mark the other sticker on the same cubie with a 1. For a corner cubie, mark the sticker in the primary facet with a 0 
, and mark the other two stickers with 1
 and 2.

![Updated marking with numbers of the previous orientation:](<Screenshot from 2024-03-08 11-07-22.png>)


We notice that we can use a 4-tuple, $(\rho, \sigma,v,w)$ to describe any configuration of the cube. Where $\rho \in S_8$, $\sigma \in S_{12}$, $v \in C_8^{12}$ and $w \in C_2^{12}$.

# Section 4 *

In this section we demonstrate which cubes are solvable and which ones aren't by applying the Fundamental Theorem of Cubology

<!-- Take a solvable cube as an example -->

The types of solvable cubes

<!--Take a non-solvable cube as an example -->

Types of non-solvable cubes and explanation
 https://speedcubeshop.ca/a/blog/unsolvable-rubiks-cubes


 ## Corner twist

A singular twisted corner is an impossible case to get on $3 \times 3$.

As previously stated, the cube always has even parity. However, a corner twist is an odd permutation.

![Example of a corner twist](<Screenshot from 2024-03-24 08-41-47-1.png>)

 ## Swapped pieces

Two edge pieces cannot be swapped, either adjacently or opposite on a $3 \times 3$ Rubik's cube. The same can be said for two corner pieces.

Similar to the corner twist, swapped pieces produces odd permutations.

![Examples of swapped pieces](<Screenshot from 2024-03-24 08-42-10-1.png>)

<!--  ## Multiples of the same color 

 Multiples of the same color can appear incorrectly. These mistakes include two of the same color on a single edge or corner piece, or more than one center color on the cube, as each center has its own color.

![Examples of multiple colors](<Screenshot from 2024-03-24 08-42-23-1.png>)  -->

## Exactly one edge cubie is flipped *

![Example of cube with one edge flipped](<Screenshot from 2024-03-26 11-14-42-1.png>)


# Section 5 

In this section we discuss how the Fundamental Theorem of Cubology relates to the content covered in MATH 4GR3.

We can define the rubik's cube interms of the following permutation cycles
R = 

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

# Section 6 *

In this section we list all of our references.

Daniels, L. (2014). Group Theory and the Rubik’s Cube. http://math.fon.rs/files/DanielsProject58.pdf 