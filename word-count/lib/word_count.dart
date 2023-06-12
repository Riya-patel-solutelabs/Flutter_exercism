class WordCount {
  Map<String, int> countWords(String input) {
    final wordCounts = new Map<String, int>();
    new RegExp(r"(\w+'{0,1}?\w+|\w+)").allMatches(input.toLowerCase()).forEach(
        (match) => wordCounts[match[0]!] = (wordCounts[match[0]] ?? 0) + 1);
    return wordCounts;
  }
}
