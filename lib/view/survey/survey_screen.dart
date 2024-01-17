import 'package:cryptasap/view/home_screen.dart';
import 'package:cryptasap/view/survey/widget/survey_screen_first.dart';
import 'package:cryptasap/view/survey/widget/survey_screen_second.dart';
import 'package:cryptasap/view/survey/widget/survey_screen_third.dart';
import 'package:flutter/material.dart';

class SurveyScreen extends StatelessWidget {
  final PageController pageController = PageController();

  SurveyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      physics: const NeverScrollableScrollPhysics(),
      onPageChanged: (value) => print(value),
      children: [
        SurveyScreenFirst(
            navigateToNextPage: () => pageController.jumpToPage(1)),
        SurveyScreenSecond(
            navigateToNextPage: () => pageController.jumpToPage(2)),
        SurveyScreenThird(
          navigateToNextPage: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const Home(),
            ),
          ),
        ),
      ],
    );
  }
}
