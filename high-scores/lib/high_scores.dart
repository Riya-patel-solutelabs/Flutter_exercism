class HighScores {
  List<int> scores = [];

  HighScores(this.scores);

  List<int> sort() {
    var list = scores.toList();
    list.sort();
    return list;
  }

  int latest() => scores.last;
  int personalBest() => sort().last;

  Iterable<int> personalTopThree() =>
      sort().sublist(scores.length > 3 ? scores.length - 3 : 0).reversed;
}
