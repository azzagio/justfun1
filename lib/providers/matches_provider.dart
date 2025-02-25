import 'package:flutter/material.dart';
import '../models/match_model.dart';

class MatchesProvider with ChangeNotifier {
  List<Match> _matches = [];

  List<Match> get matches => _matches;

  void addMatch(Match match) {
    _matches.add(match);
    notifyListeners();
  }

  void removeMatch(Match match) {
    _matches.remove(match);
    notifyListeners();
  }

  void clearMatches() {
    _matches.clear();
    notifyListeners();
  }
  
    void setMatches(List<Match> matches) {
    _matches = matches;
    notifyListeners();
  }
}