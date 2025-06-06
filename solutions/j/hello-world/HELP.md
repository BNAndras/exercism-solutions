# Help

## Running the tests

To run the tests follow these steps:

- Head to the problem directory (eg `~/Exercism/hello-world`).
- Start a `jconsole` session (eg by typing `jconsole` or `ijconsole`) in a terminal.
- Load your solution file (eg `load 'hello-world.ijs'`)
- Load the unit test framework by typing `load  'general/unittest'`
- Test your solution by typing `unittest 'test.ijs'`.
<br></br>
- Alternatively it's possible run the tests in a single line like this: `jconsole -js "load 'hello-world.ijs'" "echo unittest 'test.ijs'" "exit 0"`.

## Skipped tests

At first, only the initial test will be enabled.
approach encourages you to solve the exercise step by step.
Each test includes a noun above its definition, with a name ending in _'\_ignore'_.
To run the test, change its value to 0.

### Example:

```
    leap_test_02_ignore=: 1 NB. Change this value to 0 to run this test
    test_leap_test_02  =: monad define
    ...                     NB. test definitions
    )
```

## Submitting your solution

You can submit your solution using the `exercism submit hello-world.ijs` command.
This command will upload your solution to the Exercism website and print the solution page's URL.

It's possible to submit an incomplete solution which allows you to:

- See how others have completed the exercise
- Request help from a mentor

## Need to get help?

If you'd like help solving the exercise, check the following pages:

- The [J track's documentation](https://exercism.org/docs/tracks/j)
- The [J track's programming category on the forum](https://forum.exercism.org/c/programming/j)
- [Exercism's programming category on the forum](https://forum.exercism.org/c/programming/5)
- The [Frequently Asked Questions](https://exercism.org/docs/using/faqs)

Should those resources not suffice, you could submit your (incomplete) solution to request mentoring.

To get help if you're having trouble, you can use one of the following resources:

- [Nuvoc][nuvoc-link]
- [r/apljk][reddit-link] subreddit
- [discord][discord-link] channel

## Submitting Incomplete Solutions

It's possible to submit an incomplete solution so you can see how others have completed the exercise.



[nuvoc-link]: https://code.jsoftware.com/wiki/NuVoc
[reddit-link]: https://www.reddit.com/r/apljk/
[discord-link]: https://discord.gg/jA4pRNx5