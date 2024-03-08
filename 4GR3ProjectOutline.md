---
title: MATH 4GR3 Project On Rubiks Cubes (Outline)
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

State the algorithms we get:
The bottom up solution, ~~CFOP method, Petrus Method~~

3. A summary of the proof of the main theorem(s).

We give a summary of the proofs we need,
and the algorithms

Begin with the cube in a solved state, and number the cube as such:

![The numbering in question:](<Screenshot from 2024-03-08 10-56-32.png>){ height=200px }

Next, add a "+" mark to each cubicle, where each cubicle can only have 1 of these "+" marks to 1 of their facets. There are a number of ways for doing this, so we will call the facet we mark for each cubicle the "primary facet".

For example:

![An example of an orientation:](<Screenshot from 2024-03-08 11-03-50.png>)

Then, we mark the remaining facets based on the primary facet. For an edge cubie, mark the sticker with a 0 
 if it is the primary facet, and mark the other sticker on the same cubie with a 1. For a corner cubie, mark the sticker in the primary facet with a 0 
, and mark the other two stickers with 1
 and 2.

![Updated marking with numbers of the previous orientation:](<Screenshot from 2024-03-08 11-07-22.png>)

We notice that we can use a 4-tuple, $(\rho, \sigma,v,w)$ to describe any configuration of the cube. Where $\rho \in S_8$, $\sigma \in S_12$, $v \in \mathbb Z_8^{12}$ and $w \in \mathbb Z_2^{12}$
 

We give a summary on what is solvable
what is not (some rubix cube puzzles are
not solvabale)

4. An example of the main theorem(s).

A solution to an arangement (using one of the algortihms)u
We give an example of a solvable cube(apply the algorithm), we also give an example of a non solvable cube. 

~~Annother one is using God's number (22, the max number of minimal
moves to solve a cube)~~

5. A discussion of how this result relates to a topic discussed in the course. 

Basic Group theory, orbits, commutators,
stabilizers, support

6. A bibliography with at least five papers related to the topic.

State the papers and algorithms we worked on.