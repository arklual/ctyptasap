import 'package:auto_size_text/auto_size_text.dart';
import 'package:cryptasap/core/colors.dart';
import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: size.height * 0.03,
      ),
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        color: AppColors.mainBlue,
      ),
      child: const Center(
        child: AutoSizeText.rich(
          TextSpan(
            text: 'CRYPT',
            style: TextStyle(
              fontFamily: 'Montserrat',
              color: AppColors.mainGreenDark,
              fontWeight: FontWeight.w700,
            ),
            children: [
              TextSpan(
                text: 'ASAP',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  color: AppColors.mainWhite,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
          style: TextStyle(
            fontSize: 28,
          ),
          maxLines: 1,
        ),
      ),
    );
  }
}
