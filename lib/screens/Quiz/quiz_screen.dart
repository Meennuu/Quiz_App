import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quizapp/Controller/question_controller.dart';
import 'package:quizapp/screens/Quiz/components/body.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController());
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          TextButton(
            onPressed: _controller.nextQuestion,
            child: const Text(
              'Skip',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      body: const Body(),
    );
  }
}
