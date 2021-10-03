class FightResult {
  final String result;
  const FightResult._(this.result);

  static const won = FightResult._('Won');
  static const lost = FightResult._('Lost');
  static const draw = FightResult._('Draw');

  static FightResult? calculateResult(
      final int yourLives, final int enemysLives) {
    if (yourLives == 0 && enemysLives == 0) {
      return draw;
    }

    if (yourLives == 0) {
      return lost;
    }

    if (enemysLives == 0) {
      return won;
    }
  }

  @override
  String toString() {
    return 'FightResult{result: $result}';
  }
}