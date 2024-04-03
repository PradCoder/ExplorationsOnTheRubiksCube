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

## Preliminaries

The following theorems follow from the Fundamental Theorem of Cubology, but we state them ahead of it as we can
derive them

The theorem on Parity can be arrived at via induction:
(proved in the rubiks.pdf)

The Second fundamental theorem is established as any valid way to construct a legal cube, allows the utilization of only valid
moves, hence constructing a legal cube is equivalent to applying operations to legally permute a cube:
(shown in bandelow, bage 46, or page 54 in the pdf)

## Construction of the Rubiks Cube

We can start with $S_{54}$ and restrict the permutations we can perform till we arrive at the rubik's cube group,
we see that we indeed can restrict the motion of the center cubies and arrive at S\_{48} we restrict motion further
by applying the fundamental theorem of cubology to end up with the actual rubik's cube group.

We can indeed generate the rubiks cube group using the combinations of the valid moves using Sage.

## Unsolvable Cubes

Due to the fundamental theorem we can clearly establish that there are arrangements for the rubiks that are illegal
that can only exist if we take apart and reassemble the rubiks cube, or essentially we can never reach such a cube
from the solved state

![alt text](<Screenshot from 2024-04-02 07-11-57.png>)

![alt text](<Screenshot from 2024-04-02 07-10-51.png>)

![alt text](image.png)

![alt text](image-1.png)

1. The edge cubie is flipped once, $1 \mod 2 \neq 0 \mod 2$.

2. There is only one corner cubie that is twisted one way $1 \mod 3 \neq 0 \mod 3$.

3. Similar Arguments for 1 and 2.

