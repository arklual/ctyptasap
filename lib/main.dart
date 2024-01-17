import 'package:auto_size_text/auto_size_text.dart';
import 'package:cryptasap/core/colors.dart';
import 'package:cryptasap/core/theme.dart';
import 'package:cryptasap/view/survey/survey_screen.dart';
import 'package:cryptasap/view/survey/widget/survey_screen_first.dart';
import 'package:cryptasap/view/welcome_screen.dart';
import 'package:flutter/material.dart';

import 'view/survey/widget/survey_screen_third.dart';
import 'view/survey/widget/survey_screen_second.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: getTheme(),
      home: WelcomeScreen(),
    );
  }
}
