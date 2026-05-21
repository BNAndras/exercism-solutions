# Grains

Welcome to Grains on Exercism's Phix Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Instructions

Calculate the number of grains of wheat on a chessboard given that the number on each square doubles.

There once was a wise servant who saved the life of a prince.
The king promised to pay whatever the servant could dream up.
Knowing that the king loved chess, the servant told the king he would like to have grains of wheat.
One grain on the first square of a chess board, with the number of grains doubling on each successive square.

There are 64 squares on a chessboard (where square 1 has one grain, square 2 has two grains, and so on).

Write code that shows:

- how many grains were on a given square, and
- the total number of grains on the chessboard

There are two data types in Phix to hold numbers, integer and atom.
Integers are signed and one bit smaller than the machine word, and hence (spoiler alert) inadequate for this task even on 64-bit.
Atoms can hold higher precision integers, sufficient at least on 64-bit, which you are certainly using when running online at the
exercism.org site, and probably in the CLI, as long as that's what you installed - just run 'p' in a terminal console and it will 
show you.

## 32-bit machines

However, even atoms on 32-bit are still insufficiently accurate/large enough to complete this exercise. To get round that you 
may instead return a string, which must/can be exact, without any commas or underscores, but are not obliged to so so on 64-bit. 
You may construct such strings manually or use an arbitrary precision library such as [mpfr][mpfr].

A 32-bit version of Phix remains vital for adequate testing on desktop/Phix prior to using p2js, since JavaScript is inherently 
32-bit (or perhaps more precisely 53-bit) even in a 64-bit browser running on a 64-bit machine.

The precise limits of what can be held in Phix integers and atoms is of course futher detailed in the [manual][manual].

[mpfr]: http://phix.x10.mx/docs/html/mpfr.htm
[manual]: http://phix.x10.mx/docs/html/atoms.htm

## Source

### Created by

- @petelomax

### Based on

The CodeRanch Cattle Drive, Assignment 6 - https://coderanch.com/wiki/718824/Grains