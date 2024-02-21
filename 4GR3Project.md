---
title: MATH 4GR3 Project - On Rubiks Cubes
author: Pesara 
date: \today
linestretch: 1.25
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

We state the theorems on parity,
Lagrange's Theorem, 

State the algorithms we get:
The bottom up solution, CFOP method, Petrus Method

3. A summary of the proof of the main theorem(s).

We give a summary of the proofs we need,
and the algorithms

We give a summary on what is solvable
what is not (some rubix cube puzzles are
not solvabale)

4. An example of the main theorem(s).

A solution to an arangement (using one of the algortihms)

Annother one is using God's number (22, the max number of minimal
moves to solve a cube)

5. A discussion of how this result relates to a topic discussed in the course. 

Basic Group theory, orbits, commutators,
stabilizers, support

6. A bibliography with at least five papers related to the topic.

State the papers and algorithms we worked on.