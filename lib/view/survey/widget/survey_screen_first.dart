import 'package:auto_size_text/auto_size_text.dart';
import 'package:cryptasap/core/colors.dart';
import 'package:cryptasap/core/widget/logo.dart';
import 'package:flutter/material.dart';

import '../../widget/answer_card.dart';

class SurveyScreenFirst extends StatefulWidget {
  final Function navigateToNextPage;
  const SurveyScreenFirst({
    super.key,
    required this.navigateToNextPage,
  });

  @override
  State<SurveyScreenFirst> createState() => _SurveyScreenFirstState();
}

class _SurveyScreenFirstState extends State<SurveyScreenFirst> {
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
                        'ВОПРОС 1/3',
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
                          EdgeInsets.symmetric(horizontal: 0.1952 * size.width),
                      child: AutoSizeText(
                        "СКОЛЬКО ВАМ ЛЕТ?",
                        maxLines: 1,
                        style: textTheme.bodyLarge?.copyWith(
                            color: AppColors.mainWhite, fontSize: 125),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 0.2272 * size.width),
                      child: AutoSizeText(
                        "(ВЫБЕРИТЕ ОДИН ИЗ ВАРИАНТОВ)",
                        maxLines: 1,
                        style: textTheme.bodyLarge?.copyWith(
                            color: AppColors.textLightSecondary, fontSize: 64),
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
                      answer: 'ОТ 18 ДО 30',
                      isTicked: selectedIndex == 0 ? true : false,
                      onTap: () {
                        setState(() => selectedIndex = 0);
                        widget.navigateToNextPage();
                      },
                    ),
                    AnswerCard(
                      answer: 'ОТ 31 ДО 45',
                      isTicked: selectedIndex == 1 ? true : false,
                      onTap: () {
                        setState(() => selectedIndex = 1);
                        widget.navigateToNextPage();
                      },
                    ),
                    AnswerCard(
                      answer: 'ОТ 46 ДО 55',
                      isTicked: selectedIndex == 2 ? true : false,
                      onTap: () {
                        setState(() => selectedIndex = 2);
                        widget.navigateToNextPage();
                      },
                    ),
                    AnswerCard(
                      answer: '55 +',
                      isTicked: selectedIndex == 3 ? true : false,
                      onTap: () {
                        setState(() => selectedIndex = 3);
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
