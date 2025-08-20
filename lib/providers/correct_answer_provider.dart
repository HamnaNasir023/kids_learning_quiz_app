import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/question_list.dart';
import 'package:flutter_quiz_app/model/questions.dart';

class CorrectAnswerProvider extends ChangeNotifier {
  int _currentIndex = 0;
  int _score = 0;
  int? _selectedAnswerIndex;

  List<Questions> _filteredQuestions = [];

  int get currentIndex => _currentIndex;
  int get score => _score;
  int? get selectedAnswerIndex => _selectedAnswerIndex;
  Questions? get currentQuestion {
    if (_filteredQuestions.isEmpty) {
      return null;
    }
    if (_currentIndex < _filteredQuestions.length) {
      return _filteredQuestions[_currentIndex];
    } else {
      // return a dummy question or handle gracefully
      return _filteredQuestions.last;
    }
  }
 


  int get totalQuestions => _filteredQuestions.length;

  bool isAnswered = false;

  void loadQuestions(int categoryId) {
    _filteredQuestions =
        questionsList.where((q) => q.categoryId == categoryId).toList();
    _currentIndex = 0;
    _score = 0;
    _selectedAnswerIndex = null;
    notifyListeners();
  }

  void isCorrectAnswer(int index) {
    _selectedAnswerIndex = index;
    isAnswered = true;
    if (index == currentQuestion!.correctIndex) {
      _score++;
    }
    notifyListeners();
  }

  void goToNextQuestion() {
    if (!isLastQuestion()) {
      _selectedAnswerIndex = null;
      _currentIndex++;
      isAnswered = true;
      notifyListeners();
    }
  }


  bool isLastQuestion() {
    return _currentIndex >= _filteredQuestions.length - 1;
  }

  void resetQuiz() {
  _currentIndex = 0;
  _score = 0;
  _selectedAnswerIndex = null;
  _filteredQuestions = [];
  notifyListeners();
}
}
