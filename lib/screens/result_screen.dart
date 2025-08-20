import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/screens/quiz_main_screen.dart';
import 'package:flutter_quiz_app/widget/result_widget.dart';
class ResultScreen extends StatelessWidget {
  static const String pageName = "/resultScreen";
  int score;
  int total;

  ResultScreen({super.key, required this.score, required this.total});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 202, 230, 245),
        leading: BackButton(
          onPressed: () =>
              Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const QuizMainScreen(),
          )),
          color: const Color.fromARGB(255, 11, 51, 84),
        ),
       
      ),
      backgroundColor: const Color.fromARGB(255, 10, 45, 62),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Quiz Summary",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: switch (score) {
                0 => ResultWidget(
                    comment: "Try Again!", score: score, total: total),
                1 => ResultWidget(comment: "Poor!", score: score, total: total),
                2 => ResultWidget(
                    comment: "Good Try!", score: score, total: total),
                3 => ResultWidget(
                    comment: "Good Try! keep it ", score: score, total: total),
                4 => ResultWidget(
                    comment: "Welldone!", score: score, total: total),
                _ => ResultWidget(
                    comment: "Congrutations!", score: score, total: total)
              },
            ),
          ],
        ),
      ),
    );
  }
}
