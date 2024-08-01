import 'package:flutter/material.dart';
import 'package:quizapp/screens/Quiz/quiz_screen.dart';

import 'screens/Welcome/Welcome_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: const QuizScreen(),
    );
  }
}
