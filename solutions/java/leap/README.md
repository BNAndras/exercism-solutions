# Leap

Welcome to Leap on Exercism's Java Track.
If you need help running the tests or submitting your code, check out `HELP.md`.

## Introduction

A leap year (in the Gregorian calendar) occurs:

- In every year that is evenly divisible by 4.
- Unless the year is evenly divisible by 100, in which case it's only a leap year if the year is also evenly divisible by 400.

Some examples:

- 1997 was not a leap year as it's not divisible by 4.
- 1900 was not a leap year as it's not divisible by 400.
- 2000 was a leap year!

~~~~exercism/note
For a delightful, four-minute explanation of the whole phenomenon of leap years, check out [this YouTube video](https://www.youtube.com/watch?v=xX96xng7sAE).
~~~~

## Instructions

Your task is to determine whether a given year is a leap year.

Before you start, make sure you understand how to write code that can pass the test cases.
For more context, check out this [tutorial].

Most Java exercises include multiple test cases.
These cases are structured to support a useful process known as [test-driven development (TDD)][tdd].
TDD involves repeating a structured cycle that helps programmers build complex functionality piece by piece rather than all at once.
That cycle can be described as follows:

1. Add a test that describes one piece of desired functionality your code is currently missing.
2. Run the tests to verify that this newly-added test fails.
3. Update your existing code until:
   - All the old tests continue to pass;
   - The new test also passes.
4. [Clean up][refactoring] your code, making sure that all tests continue to pass.
   This typically involves renaming variables, removing duplicated chunks of logic, removing leftover logging, etc.
5. Return to step 1 until all desired functionality has been built!

The test files in this track contain _all_ the tests your solution should pass to be considered valid.
That doesn't immediately seem to be compatible with the cycle described above, in which tests are written one by one.
However, the tool that we use to write our tests, [JUnit][junit],
provides a [@Disabled][junit-disabled] [annotation][java-annotation] that can be used to temporarily skip an already-written test.
Using this annotation, we make sure that the test files we deliver to you satisfy the following rules:

- The first test in any test file is _not_ skipped by default.
- All but the first test in any test file _are_ skipped by default.

This allows you to simulate the TDD cycle by following these slightly-modified steps:

1. Run the tests to verify that _at most one_ test currently fails.
2. Update your existing code until all the non-skipped tests pass.
3. Clean up your code, making sure that all non-skipped tests continue to pass.
4. Remove the topmost `@Disabled` annotation in the test file.
5. Return to step 1 until no tests are skipped and all tests pass!

[java-annotation]: https://docs.oracle.com/javase/tutorial/java/annotations/
[junit]: https://junit.org/junit5/
[junit-disabled]: https://junit.org/junit5/docs/current/api/org.junit.jupiter.api/org/junit/jupiter/api/Disabled.html
[refactoring]: https://en.wikipedia.org/wiki/Code_refactoring
[tdd]: https://en.wikipedia.org/wiki/Test-driven_development
[tutorial]: https://github.com/exercism/java/blob/main/exercises/practice/hello-world/.docs/instructions.append.md#tutorial

## Source

### Created by

- @sonapraneeth-a

### Contributed to by

- @jmrunkle
- @lemoncurry
- @msomji
- @muzimuzhi
- @sshine

### Based on

CodeRanch Cattle Drive, Assignment 3 - https://web.archive.org/web/20240907033714/https://coderanch.com/t/718816/Leap