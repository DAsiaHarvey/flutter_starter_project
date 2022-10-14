import 'package:flutter/cupertino.dart';

import 'cluan.dart';

class CluanModel extends ChangeNotifier {
  CluanModel();
  List<Cluan>? cluans = [
    // list of clues
    Cluan(
        clue: 'Golden banana eater', answer: 'Donkey Kong', date: '2022-04-21'),
    Cluan(clue: 'The Good Land city', answer: 'Milwaukee', date: '2022-10-04'),
    Cluan(
        clue: 'Weather in Philadelphia',
        answer: 'Always Sunny',
        date: '2022-05-05'),
    Cluan(clue: 'Evermore artist', answer: 'Taylor Swift', date: '2022-10-21'),
    Cluan(clue: 'Best CS Professor', answer: 'Rogers :)', date: '2022-10-07')
  ];

  addCluan(clue, answer, date) {
    cluans!.add(Cluan(clue: clue, answer: answer, date: date));
    notifyListeners();
  }

  
  /// sort clues
  sortByClue() {
        cluans!.sort((a, b) => a.clue!.compareTo(b.clue!));
        notifyListeners();
    }
  

  /// sort answers
  sortByAnswer() {
      cluans!.sort((a, b) => a.answer!.compareTo(b.answer!));
      notifyListeners();
  }

}
