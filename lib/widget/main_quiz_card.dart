import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/widget/app_btn.dart';

class MainQuizCard extends StatelessWidget {
  final String quizCategory;
  final VoidCallback onTab;

  const MainQuizCard({
    super.key,
    required this.quizCategory,
    required this.onTab,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Card.outlined(
        color: const Color.fromARGB(255, 202, 230, 245),
        borderOnForeground: true,
        child: Center(
          child: ListTile(
            minTileHeight: 120,
            selectedTileColor: Color.fromARGB(255, 11, 51, 84),
            hoverColor: Colors.blueAccent,
            focusColor: Colors.blueAccent,
            title: Text(
              quizCategory,
              style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color.fromARGB(255, 11, 51, 84)),
            ),
            trailing: AppBtn(
              text: "Let's Start",
              onTab: () => onTab(),
            ),
          ),
        ),
      ),
    );
  }
}
