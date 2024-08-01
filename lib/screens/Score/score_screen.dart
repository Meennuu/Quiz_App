import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quizapp/Controller/question_controller.dart';
import 'package:quizapp/constants.dart';
import 'package:quizapp/screens/Quiz/quiz_screen.dart';
import 'package:quizapp/screens/Welcome/Welcome_screen.dart';

class ScoreScreen extends StatelessWidget {
  const ScoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Fetch the existing instance of QuestionController
    QuestionController _qnController = Get.find<QuestionController>();

    return Scaffold(
        body: Stack(
      fit: StackFit.expand,
      children: [
        SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
        Column(
          children: [
            const Spacer(
              flex: 3,
            ),
            Text(
              "Your Score!",
              style: Theme.of(context).textTheme.headline3!.copyWith(
                  color: kSecondaryColor, fontWeight: FontWeight.bold),
            ),
            const Spacer(),
            Text(
              "${_qnController.numOfCorrectAns * 10}/${_qnController.questions.length * 10}",
              style: Theme.of(context)
                  .textTheme
                  .headline4!
                  .copyWith(color: kSecondaryColor),
            ),
            const Spacer(),
            Row(
              children: [
                const Spacer(
                  flex: 1,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(const WelcomeScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kSecondaryColor,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  child: Text(
                    "Play Again",
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: kBlackColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
                ElevatedButton(
                  onPressed: () {
                    Get.to(const WelcomeScreen());
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: kSecondaryColor,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  child: Text(
                    "Exit",
                    style: Theme.of(context).textTheme.button!.copyWith(
                          color: kBlackColor,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                const Spacer(
                  flex: 1,
                ),
              ],
            ),
            const Spacer(
              flex: 3,
            ),
          ],
        )
      ],
    ));
  }
}
