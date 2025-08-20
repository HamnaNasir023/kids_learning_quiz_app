import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/data/category_list.dart';
import 'package:flutter_quiz_app/providers/category_provider.dart';
import 'package:flutter_quiz_app/providers/correct_answer_provider.dart';
import 'package:flutter_quiz_app/screens/quiz_screen.dart';
import 'package:flutter_quiz_app/widget/main_quiz_card.dart';
import 'package:provider/provider.dart';

class QuizMainScreen extends StatefulWidget {
  static const String pageName = "/";
  const QuizMainScreen({
    super.key,
  });

  @override
  State<StatefulWidget> createState() => _MyQuizMainScreenState();
}

class _MyQuizMainScreenState extends State<QuizMainScreen> {
  @override
  Widget build(BuildContext context) {
    final categoryProvider = context.watch<CategoryProvider>();
    final correctAnswerProvider = context.watch<CorrectAnswerProvider>();
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 202, 230, 245),
        //  backgroundColor: const Color.fromARGB(255, 177, 200, 211),
        title: const Text(
          "KIDS QUIZ APP",
          style: TextStyle(
              fontWeight: FontWeight.w700,
              color: Color.fromARGB(255, 11, 51, 84)),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 10, 45, 62),
      body: Center(
        child: ListWheelScrollView(
          overAndUnderCenterOpacity: 0.6,
          diameterRatio: 1.5,
          useMagnifier: true,
          magnification: 1,
          offAxisFraction: 1,
          itemExtent: 80,
          children: [
            ...List.generate(categoryList.length, (index) {
              return MainQuizCard(
                quizCategory: categoryList[index].categoryName,
                onTab: () {
                  categoryProvider.isCategory(index); // store index

                  correctAnswerProvider
                      .loadQuestions(categoryList[index].categoryId);

                  if (correctAnswerProvider.totalQuestions > 0) {
                    Navigator.pushNamed(context, QuizScreen.pageName);
                  } else {
                    const Text("No category found!!");
                  }
                },
              );
            })
          ],
        ),
      ),
    );
  }
}
