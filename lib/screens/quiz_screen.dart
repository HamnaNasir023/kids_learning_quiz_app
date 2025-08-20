import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/providers/correct_answer_provider.dart';
import 'package:flutter_quiz_app/screens/quiz_main_screen.dart';
import 'package:flutter_quiz_app/screens/result_screen.dart';
import 'package:flutter_quiz_app/widget/app_btn.dart';
import 'package:flutter_quiz_app/widget/button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class QuizScreen extends StatelessWidget {
  static const String pageName = '/quizScreen';

  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final quizProvider = context.watch<CorrectAnswerProvider>();
    final question = quizProvider.currentQuestion;

    // If no question left, go straight to main screen
    if (question == null) {
      Future.microtask(() {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (_) => const QuizMainScreen()),
        );
      });
      return const SizedBox.shrink(); // empty widget while navigating
    }
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 202, 230, 245),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                BackButton(
                  color: Color.fromARGB(255, 11, 51, 84),
                ),
                Center(
                  child: Text(
                    "Choose the correct Option",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
                  ),
                ),
              ],
            ),
            SvgPicture.asset(
              quizProvider.currentQuestion!.imagePath,
              height: 150,
              width: 150,
              fit: BoxFit.contain,
            ),
            ...List.generate(quizProvider.currentQuestion!.options.length,
                (index) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: ButtonWidget(
                    onTap: () {
                      quizProvider.isCorrectAnswer(index);
                    },
                    isSelected: quizProvider.selectedAnswerIndex == index,
                    isCorrect:
                        quizProvider.currentQuestion!.correctIndex == index,
                    text: quizProvider.currentQuestion!.options[index]),
              );
            }),
            if (quizProvider.isAnswered)
              AppBtn(
                  text: quizProvider.isLastQuestion() ? "Finish" : "Next",
                  onTab: () {
                    bool isLastQuestion = quizProvider.isLastQuestion();
                    if (isLastQuestion) {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => ResultScreen(
                          score: quizProvider.score,
                          total: quizProvider.totalQuestions,
                        ),
                      ));
                    } else {}
                    quizProvider.goToNextQuestion();
                  })
          ],
        ),
      ),
    );
  }
}
