class Bob {
  String response(String greeting) {
    if (greeting.trim() == "") {
      return "Fine. Be that way!";
    }
    if (greeting == greeting.toUpperCase() &&
        greeting != greeting.toLowerCase()) {
      return "Whoa, chill out!";
    }
    if (greeting[greeting.length - 1] == "?") {
      return "Sure.";
    }
    return "Whatever.";
  }
}
