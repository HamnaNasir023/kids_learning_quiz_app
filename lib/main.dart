import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/providers/category_provider.dart';
import 'package:flutter_quiz_app/providers/correct_answer_provider.dart';
import 'package:flutter_quiz_app/screens/quiz_main_screen.dart';
import 'package:flutter_quiz_app/screens/quiz_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => CorrectAnswerProvider()),
        ChangeNotifierProvider(create: (context) => CategoryProvider())
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        initialRoute: '/',
        routes: {
          QuizMainScreen.pageName: (context) => const QuizMainScreen(),
          QuizScreen.pageName: (context) => QuizScreen(),
        },
      ),
    );
  }
}
