import 'package:auto_size_text/auto_size_text.dart';
import 'package:cryptasap/core/colors.dart';
import 'package:cryptasap/core/widget/logo.dart';
import 'package:flutter/material.dart';

import '../../widget/answer_card.dart';

class SurveyScreenSecond extends StatefulWidget {
  final Function navigateToNextPage;
  const SurveyScreenSecond({
    super.key,
    required this.navigateToNextPage,
  });

  @override
  State<SurveyScreenSecond> createState() => _SurveyScreenSecondState();
}

class _SurveyScreenSecondState extends State<SurveyScreenSecond> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    TextTheme textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/background.jpg',
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: Column(
                  children: [
                    const Spacer(
                      flex: 22,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * (0.073 - 0.04),
                      ),
                      child: const LogoWidget(),
                    ),
                    const Spacer(
                      flex: 6,
                    ),
                    Container(
                      height: 0.05 * size.height,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 16,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.mainWhite,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: AutoSizeText(
                        'ВОПРОС 2/3',
                        maxLines: 1,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: AppColors.textDark,
                              fontSize: 83,
                            ),
                      ),
                    ),
                    const Spacer(
                      flex: 35,
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 0.053 * size.width),
                      child: AutoSizeText.rich(
                        TextSpan(
                          text: 'ЕСТЬ ЛИ У ВАС ОПЫТ',
                          style: textTheme.bodyLarge?.copyWith(
                            color: AppColors.mainGreenLight,
                            fontSize: 125,
                          ),
                          children: [
                            TextSpan(
                              text: ' В РАБОТЕ С ПОДОБНЫМИ СЕРВИСАМИ?',
                              style: textTheme.bodyLarge?.copyWith(
                                color: AppColors.mainWhite,
                                fontSize: 125,
                              ),
                            ),
                          ],
                        ),
                        maxLines: 2,
                        textAlign: TextAlign.center,
                        style: textTheme.bodyLarge?.copyWith(
                          color: AppColors.mainWhite,
                          fontSize: 125,
                        ),
                      ),
                    ),
                    const Spacer(
                      flex: 14,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  mainAxisSpacing: size.width * 0.04,
                  crossAxisSpacing: size.width * 0.04,
                  children: [
                    AnswerCard(
                      answer: 'ОПЫТ ЕСТЬ',
                      isTicked: selectedIndex == 0 ? true : false,
                      onTap: () {
                        setState(() => selectedIndex = 0);
                        widget.navigateToNextPage();
                      },
                    ),
                    AnswerCard(
                      answer: 'ОПЫТА НЕТ',
                      isTicked: selectedIndex == 1 ? true : false,
                      onTap: () {
                        setState(() => selectedIndex = 1);
                        widget.navigateToNextPage();
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
