import 'package:collection/collection.dart';

const errInvalidLength = 'strands must be of equal length';

class Hamming {
  int distance(String left, String right) {
    if (left.length != right.length) {
      throw new ArgumentError(errInvalidLength);
    }

    return new IterableZip([left.runes, right.runes])
        .where((runes) => runes.first != runes.last)
        .length;
  }
}
