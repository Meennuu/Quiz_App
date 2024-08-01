import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quizapp/Controller/question_controller.dart';
import 'package:quizapp/constants.dart';
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
        SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: Column(
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
                // Column for buttons
                Column(
                  children: [
                    InkWell(
                      onTap: () {
                        Get.to(const WelcomeScreen());
                      },
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(kDefaultPadding * 0.75),
                        decoration: const BoxDecoration(
                            gradient: kPrimaryGradient,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Text(
                          "Play Again",
                          style: Theme.of(context).textTheme.button!.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                    const SizedBox(
                        height: kDefaultPadding), // Space between buttons
                    InkWell(
                      onTap: () {
                        Get.to(const WelcomeScreen());
                      },
                      child: Container(
                        width: double.infinity,
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(kDefaultPadding * 0.75),
                        decoration: const BoxDecoration(
                            gradient: kPrimaryGradient,
                            borderRadius:
                                BorderRadius.all(Radius.circular(12))),
                        child: Text(
                          "Exit",
                          style: Theme.of(context).textTheme.button!.copyWith(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
                const Spacer(
                  flex: 3,
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
