import 'package:auto_size_text/auto_size_text.dart';
import 'package:cryptasap/core/colors.dart';
import 'package:cryptasap/core/widget/logo.dart';
import 'package:cryptasap/view/survey/survey_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: size.width,
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.073),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                'assets/images/background.jpg',
              ),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            children: [
              const Spacer(),
              AutoSizeText(
                'ДОБРО ПОЖАЛОВАТЬ В',
                maxLines: 1,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: AppColors.mainWhite,
                      fontSize: 171,
                    ),
              ),
              SizedBox(
                height: size.height * 0.012,
              ),
              const LogoWidget(),
              SizedBox(
                height: size.height * 0.035,
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.1),
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.mainGreenDark.withOpacity(0.17),
                      spreadRadius: size.width * 0.05,
                      blurRadius: size.width * 0.3,
                    ),
                  ],
                ),
                child: Image.asset(
                  'assets/images/phone.png',
                ),
              ),
              SizedBox(
                height: size.height * 0.035,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.065,
                ),
                child: AutoSizeText.rich(
                  TextSpan(
                    text: 'ДЛЯ ДОСТУПА КО ВСЕМ ФУНКЦИЯМ,\n',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: AppColors.mainWhite,
                          fontSize: 100,
                        ),
                    children: [
                      TextSpan(
                        text: 'ПРОЙДИТЕ НЕБОЛЬШОЙ ОПРОС',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              color: AppColors.mainGreenLight,
                              fontSize: 100,
                            ),
                      ),
                    ],
                  ),
                  style: const TextStyle(
                    fontSize: 45,
                  ),
                  maxLines: 2,
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: size.height * 0.022,
              ),
              GestureDetector(
                onTap: () => Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SurveyScreen(),
                  ),
                ),
                child: Container(
                  padding: EdgeInsets.symmetric(
                    vertical: 0.022 * size.height,
                  ),
                  height: size.height * 0.074,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColors.mainGreenDark,
                  ),
                  child: Center(
                    child: AutoSizeText(
                      'ПРОЙТИ ОПРОС',
                      maxLines: 1,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: AppColors.mainWhite,
                            fontSize: 100,
                          ),
                    ),
                  ),
                ),
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}
