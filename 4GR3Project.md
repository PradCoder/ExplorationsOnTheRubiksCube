---
title: MATH 4GR3 Project On Rubiks Cubes
---

# Abstract
In this project we discuss the motivation for the Rubiks cube
Rubiks cube group (How we derive the group for modeling the cube), 
https://faculty.etsu.edu/beelerr/rubik-talk2.pdf
https://web.mit.edu/sp.268/www/rubik.pdf

the general structure of the 3x3x3 rubiks cube (combinatorics of the group, legal moves in the group, solutions that are valid),

http://math.fon.rs/files/DanielsProject58.pdf

https://web.mit.edu/sp.268/www/rubik.pdf


Algorithms on how to solve the cube (3x3x3),

https://ruwix.com/the-rubiks-cube/how-to-solve-the-rubiks-cube-beginners-method/

https://arxiv.org/pdf/1106.5736.pdf

https://digitalcommons.ric.edu/cgi/viewcontent.cgi?article=1164&context=honors_projects

Implementations of the algorithms and discussion on how to do so effectively (optimization, computer algebra systems, computational geometry)

https://doc.sagemath.org/html/en/reference/spkg/rubiks.html

Different types of rubix cubes and extensions to the algorithms ()
https://www.puzzlemaster.ca/browse/cubepuzzle/?p=all

# How we meet Criteria

1. The relevant definitions and results needed to state the main results. 
Groups, Subgroups, Cayley Graphs, Macros

2. The statement of the main theorem(s) of your topic

https://www.sfu.ca/~jtmulhol/math302/puzzles-rc.html
Main Main Theorem: The Fundamental Theorem of Cubology (plain language form)

We state the theorems on parity,
Lagrange's Theorem, 

Theorem: The cube always has even parity, or an even number of cubies exchanged, and 0 is even.


State the algorithms we get:
The bottom up solution 

3. A summary of the proof of the main theorem(s).

We give a summary of the proofs we need,
and the algorithms

We give a summary on what is solvable
what is not (some rubix cube puzzles are
not solvabale)

4. An example of the main theorem(s).

A solution to an arangement (using one of the algortihms)u
We give an example of a solvable cube(apply the algorithm), we also give an example of a non solvable cube. 

5. A discussion of how this result relates to a topic discussed in the course. 

Basic Group theory, orbits, commutators,
stabilizers, support

6. A bibliography with at least five papers related to the topic.

State the papers and algorithms we worked on.


# Section 1

In this section, we will state and define the relevant definitions and results required to state our main result(s).

## Group

A group $(G, \star)$ is a set $G$ with a binary operation $\star: G \times G \rightarrow G$ defined on it such that:

### $\star$ is associative 
Given $x,y,z \in G$
$$(x \star y) \star z = x \star (y \star z)$$

### Existence of an identity 
In $G$ there exists an element $e$ such that 
$$e \star x = x \star e = x$$

### Existence of an inverse 
For any $x \in G$ there exists an element $x^{-1}$ such that 
$$x \star x^{-1} = x^{-1} \star x = e$$

## Subgroup
A subset $H$ of $G$ is a subgroup if and only if:

### $H$ contains the identity of $G$ 
Given $e_G \in G$ is the identity of $G$, then $e_G \in H$.

### Closed under the operation of $G$ 
Given $x,y \in H$, then 
$x \star y \in H$

### Existence of an inverse 
For any $x \in H$ there exists it's inverse $x^{-1} \in H$.


## Cayley Graph

Definition of a Cayley graph:

Let G be a group with generating
set $\Gamma$. Then the Cayley graph of G with respect to $Γ$, denoted by
$Cay(G, Γ)$, is constructed as follows:

1. The vertices Cay(G, $\Gamma$) are the elements of G.

2. Two vertices $v,w \in G$ are adjacent $\iff$ there exists a $\gamma \in \Gamma$ such that $v = w \gamma$, so $vw^{-1} \in \Gamma$

3. The multiplicity (# of edges between 2 distinct vertices) of the edge ${v, w}$ in edge multiset $E$ is the
multiplicity of $vw^{−1}$ in $Γ$.

A multiset is a collection of objects where items may appear in
the collection more than once. The number of times that an object
appears in the multiset is called the multiplicity of that element. If S
is a multiset, then $|S|$ is the number of objects in S.



## Macros





## Bottom Up Algorithm
Bottom up algorithm:
Pick a face
solve for the edges
then solve corners
Go down to the next layer solve for the edges (sisnce there are no corners)
Go to the final layer, solve for the edge and solve corners


# Section 2

In this section, we will state the main theorem of our topic and any lemmas required to understand the theorem.

## Theorem on Parity



## Lagrange's Theorem 

Let G be a finite group and let H be a subgroup of G. Then
$|G|/|H| = [G : H]$ is the number of distinct left cosets of H in G. In particular, the number
of elements in $H$ must divide the number of elements in $G$.


## Main Theorem: Fundamental Theorem of Cubology

 A move sequence is possible if and only if the following three conditions are satisfied:

-  The permutation of the corner cubies has the same parity as the permutation of the edge cubies.
-  The number of corners that are twisted clockwise is equal to the number that are twisted counterclockwise modulo $3$
(meaning remaining corners twisted in the same direction occur in threes).
- The number of flipped edges is even.


## A modified version of the Bottom Up Approach 

# Section 3 
In this section we will present a summarized proof of our main theorem, namely, the Fundamental Theorem of Cubology.

## Summarized Proof of the Fundamental Theorem of Cubology


# Section 4

In this section we demonstrate which cubes are solvable and which ones aren't by applying the Fundamental Theorem of Cubology

# Section 5 

In this section we discuss how the Fundamental Theorem of Cubology relates to the content covered in MATH 4GR3.

# Section 6

In this section we list all of our references.