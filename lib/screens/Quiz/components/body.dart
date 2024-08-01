import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:quizapp/Controller/question_controller.dart';
import 'package:quizapp/constants.dart';
import 'package:quizapp/screens/Quiz/components/progress_bar.dart';

import 'question_card.dart';

class Body extends StatelessWidget {
  const Body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    QuestionController questionController = Get.put(QuestionController());
    return Stack(
      children: [
        SvgPicture.asset("assets/icons/bg.svg", fit: BoxFit.fill),
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(),
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Obx(
                    () => Text.rich(TextSpan(
                        text:
                            "Question ${questionController.questionNumber.value}",
                        style: Theme.of(context)
                            .textTheme
                            .headline4!
                            .copyWith(color: kSecondaryColor),
                        children: [
                          TextSpan(
                              text: "/${questionController.questions.length}",
                              style: Theme.of(context)
                                  .textTheme
                                  .headline5!
                                  .copyWith(color: kSecondaryColor))
                        ])),
                  )),
              const Divider(
                thickness: 1.5,
              ),
              const SizedBox(
                height: kDefaultPadding,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height *
                    0.6, // Adjust the height as needed

                child: PageView.builder(
                    //blocks swipe to next question
                    physics: NeverScrollableScrollPhysics(),
                    controller: questionController.pageController,
                    onPageChanged: questionController.updateTheQnNum,
                    itemCount: questionController.questions.length,
                    itemBuilder: (context, index) => QuestionCard(
                          question: questionController.questions[index],
                        )),
              )
            ],
          ),
        )
      ],
    );
  }
}
