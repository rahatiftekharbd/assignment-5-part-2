class Question {
  String question;
  List<String> options;
  int correctAnswer;
  Question(this.question, this.options, this.correctAnswer);
}

class Quiz {
  List<Question> questions;
  int score = 0;
  Quiz(this.questions);

  void start() {
    for (var i = 0; i < questions.length; i++) {
      var q = questions[i];
      print('${i + 1}. ${q.question}');
      for (var j = 0; j < q.options.length; j++) {
        print('${j + 1}. ${q.options[j]}');
      }
      var ans = int.parse(stdin.readLineSync()!);
      if (ans == q.correctAnswer) score++;
    }
    print('Your score: $score/${questions.length}');
  }
}

import 'dart:io';

void main() {
  var q1 = Question('Capital of France?', ['Berlin', 'Paris', 'London', 'Rome'], 2);
  var q2 = Question('2 + 2 = ?', ['3', '4', '5', '6'], 2);
  var quiz = Quiz([q1, q2]);
  quiz.start();
}
