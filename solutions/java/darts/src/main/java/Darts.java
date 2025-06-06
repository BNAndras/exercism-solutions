import java.lang.Math;
import java.util.List;

class Rule {

  public double outerEdge;
  public int points;

  public Rule(double outerEdge, int points) {
    this.outerEdge = outerEdge;
    this.points = points;
  }
}

class Darts {

  private static final List<Rule> rules = List.of(
    new Rule(1.0, 10),
    new Rule(5.0, 5),
    new Rule(10.0, 1)
  );

  int score(double xOfDart, double yOfDart) {
    final double dist = Math.hypot(xOfDart, yOfDart);
    for (Rule rule : rules) {
      if (dist <= rule.outerEdge) {
        return rule.points;
      }
    }
    return 0;
  }
}
