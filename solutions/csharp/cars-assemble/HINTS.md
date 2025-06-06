# Hints

## General

- [Numbers tutorial][numbers].

## 1. Calculate the success rate

- Determining the success rate can be done through a [conditional statement][if-statement].

## 2. Calculate the production rate per second

- Use the `AssemblyLine.SuccessRate()` method you wrote earlier to determine the success rate.
- C# allows for multiplication to be applied to two different number types (such as an `int` and a `double`).
  It will automatically return the "largest" data type.
- Numbers can be compared using the built-in [comparison-][comparison-operators] and [equality operators][equality-operators].

## 3. Calculate the number of working items produced per second

- Whereas an `int` can be automatically converted to a `double`, the reverse does not hold.
  The reason for this is that an `int` has less precision than a `double` so rounding has to be applied, also the range of numbers an `int` can represent is smaller than a `double`.
  To force this conversion, one can either use one of the [`Convert` class' methods][convert-class] or [cast to an int][cast-int].

[convert-class]: https://docs.microsoft.com/en-us/dotnet/api/system.convert
[cast-int]: https://www.dotnetperls.com/cast-int
[numbers]: https://docs.microsoft.com/en-us/dotnet/csharp/tutorials/intro-to-csharp/numbers-in-csharp-local
[if-statement]: https://csharp.net-tutorials.com/control-structures/if-statement/
[comparison-operators]: https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/operators/comparison-operators
[equality-operators]: https://docs.microsoft.com/en-us/dotnet/csharp/language-reference/operators/equality-operators