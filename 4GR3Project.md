---
title: MATH 4GR3 Project On Rubiks Cubes
---

# Abstract

The rubiks cube is perhap's the world's most famous puzzle, or certainly an iconic one at that. It is widely believed to have been first concieved by Hungarian Professor of Architecture Erno Rubik in an attempt to demonstrate 3-Dimensional Design, in Particular 3-Dimensional motion, to his students. He was also the first to come up with a solution to the puzzle (conceived after one month of inventing). Since it's rise to popularity, it has entertained the minds of many people, some of whom were mathematicians. It's first rigorous mathematical analysis was done by British-American Mathemetician David Singmaster, though solutions were known to a number of mathematicians by then (Such as J.H. Conway and Roger Penrose) [https://www.youtube.com/watch?v=DtYr_3h0Ubw]. 

In this project we discuss the motivation to consider the Rubiks cube as a mathematical object, It's modelling, and as such the results that arise from it's modelling for instance the contruction of the Illegal Rubik's Cube Group, the subset of which is the Legal Rubik's Cube Group, which can be seen as a consequence of the fundamental theorems of Cubology (according to sources this varies). After the derivation and construction of the model with which we are working with we look into how to solve the rubik's cube. Note we are essentially considering only the 3x3x3 cube.

# Attempting to Understand the Cube

What is it that we are essentially trying to understand with the cube as it is presented? Well when we consider the appearance of the Rubik's cube
Rubiks cube group (How we derive the group for modeling the cube), For starters take into account that the Rubik's cube is composed of 26 mechanical pieces (called cubies) held together, Furthermore we note we have 
 - 8 corner cubies
 - 12 edge cubies
 - 6 Center cubies
 - $9 \times 6 = 54$ Facets (small faces)
 (Get a picture of the three type of faces)
Note that regardless of motion the 6 center cubes stay fixed. We start counting the the possible configurations of the cubes.


## Combinatorics

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

## Construction of the illegal Rubix cube group
[https://www.sfu.ca/~jtmulhol/math302/puzzles-rc-cubology.html]

## Construction of the legal Rubik cube group
[Daniel's project]

We note that the rubik's cube group is a subset of $S_{54}$ as it provides $54$ facets with permutations.
## Notation

The most popular set of notations are from Singmaster and we shall adopt them here

- Let $U$ denote the upward (top) face.
- Let $F$ denote the front face.
- Let $L$ denote the left face.
- Let $R$ denote the right face.
- Let $B$ denote the back face.
- Let $D$ denote the downward (bottom) face

[Daniels project, Singmaster Notes, Bandelow]




## Cayley Graph
Let G be a group with generating
set $\Gamma$, then the Cayley graph of $G$ with respect to $\Gamma$, denoted by
$Cay(G, \Gamma)$, is constructed as follows:

1. The vertices Cay(G, $\Gamma$) are the elements of G.

2. Two vertices $v,w \in G$ are adjacent $\iff$ there exists a $\gamma \in \Gamma$ such that $v = w \gamma$, so $vw^{-1} \in \Gamma$

3. The multiplicity (# of edges between 2 distinct vertices) of the edge ${v, w}$ in edge multiset $E$ is the
multiplicity of $vw^{−1}$ in $Γ$.

## Multiset
A multiset is a collection of objects where items may appear in
the collection more than once. The number of times that an object
appears in the multiset is called the multiplicity of that element. If S
is a multiset, then $|S|$ is the number of objects in S.


# Rubiks Specific Theorems
## Cubies 


## Macros

Macros are a set of instructions for solving a particular configurations of the cube, i.e. applying a macro permutes the from one state to another


# Section 2

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

## Second Fundamental Theorem of Cubology

An operation of the cube is possible if and only if the following are satisfied:
- The total number of edge and corner cycles of even length is even.
- The number of corner cycles twisted right is equal to the number of corner cycles
twisted left (up to modulo 3).
- There is an even number of reorienting edge cycles.

## Main Theorem: Fundamental Theorem of Cubology

 A move sequence is possible if and only if the following three conditions are satisfied:

-  The permutation of the corner cubies has the same parity as the permutation of the edge cubies.
-  The number of corners that are twisted clockwise is equal to the number that are twisted counterclockwise modulo $3$
(meaning remaining corners twisted in the same direction occur in threes).
- The number of flipped edges is even.


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

## Summarized Proof of the Fundamental Theorem of Cubology

We give a summary of the proofs we need,
and the algorithms

<!-- Begin with the cube in a solved state, and number the cube as such:

![The numbering in question:](<Screenshot from 2024-03-08 10-56-32.png>){ height=200px } -->

Begin with a cube in any configuration. We add a "+" mark to each cubicle, where each cubicle can only have 1 of these "+" marks to 1 of their facets. There are a number of ways for doing this, so we will call the facet we mark for each cubicle the "primary facet".

For example:

![An example of an orientation:](<Screenshot from 2024-03-08 11-03-50.png>)


Then, we mark the remaining facets based on the primary facet. For an edge cubie, mark the sticker with a 0 
 if it is the primary facet, and mark the other sticker on the same cubie with a 1. For a corner cubie, mark the sticker in the primary facet with a 0 
, and mark the other two stickers with 1
 and 2.

![Updated marking with numbers of the previous orientation:](<Screenshot from 2024-03-08 11-07-22.png>)


We notice that we can use a 4-tuple, $(\rho, \sigma,v,w)$ to describe any configuration of the cube. Where $\rho \in S_8$, $\sigma \in S_12$, $v \in \mathbb Z_8^{12}$ and $w \in \mathbb Z_2^{12}$

## Summarized proof 
 The first thing to show is that the three conditions are necessary, that is, they hold for any legal configuration. To do this we just need to show that if the conditions are satisfied for a configuration, then they also hold for the configuration obtained from it by twising one of the six faces. This involves just looking at the six cases individually.

Next we would need to show that if we had a configuration that satisfies the three conditions then the puzzle is solvable. Here is where our four basic moves come in handy. Let's recall them here for convenience. 

Since the corner and edge permutations have the same parity we can assume they are both even (otherwise twist any random face 90 degrees since this would multiply each by a 4-cycle which is odd). Since the corner permuation is even it is a product of 3-cycles, therefore the corners can be solved using 3-cycles. (We have a 3-cycle move that can be modified to cycle any 3 corner cubies on the puzzle.) Similarly, the edge permutation is even and can be solved using 3-cycles.

Now all cubies are in their correct cubicles. We now have to orient them to solve the puzzle. Condition (b) says that the number of clockwise corner twists is equal to the number of counterclockwise corner twists modulo 3
. So first twist any cw, ccw pairs into their solved positions. The result will be that all remaining corner twists will occur in triples: 3cw or 3ccw. These can be solved using our pairwise corner twisting moves. Finally, condition (c) says an even number of edges will be flipped. Luckily we have a move that will flip them in pairs. Therefore the puzzle can be solved. 
# Section 4

In this section we demonstrate which cubes are solvable and which ones aren't by applying the Fundamental Theorem of Cubology

<!-- Take a solvable cube as an example -->

The types of solvable cubes

<!--Take a non-solvable cube as an example -->

Types of non-solvable cubes and explanation
 https://speedcubeshop.ca/a/blog/unsolvable-rubiks-cubes

# Section 5 

In this section we discuss how the Fundamental Theorem of Cubology relates to the content covered in MATH 4GR3.

- Conjugation as a group action on the Rubik's Cube

# Section 6

In this section we list all of our references.

Daniels, L. (2014). Group Theory and the Rubik’s Cube. http://math.fon.rs/files/DanielsProject58.pdf 