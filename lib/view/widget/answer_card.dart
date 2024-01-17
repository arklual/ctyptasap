import 'package:auto_size_text/auto_size_text.dart';
import 'package:cryptasap/core/colors.dart';
import 'package:flutter/material.dart';

class AnswerCard extends StatefulWidget {
  final String answer;
  final bool isTicked;
  final Function onTap;

  final bool? isLong;

  const AnswerCard(
      {super.key,
      required this.answer,
      required this.isTicked,
      required this.onTap,
      this.isLong});

  @override
  State<AnswerCard> createState() => _AnswerCardState();
}

class _AnswerCardState extends State<AnswerCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onTap(),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.containerColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            Positioned(
              top: 0.034 * MediaQuery.of(context).size.width,
              left: 0.037 * MediaQuery.of(context).size.width,
              child: Container(
                padding: EdgeInsets.all(
                  0.0128 * MediaQuery.of(context).size.width,
                ),
                decoration: const BoxDecoration(
                  color: AppColors.mainWhite,
                  shape: BoxShape.circle,
                ),
                child: Center(
                  child: Container(
                    height: 0.0264 * MediaQuery.of(context).size.width,
                    width: 0.0264 * MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: (widget.isTicked) ? null : AppColors.mainWhite,
                      gradient: (widget.isTicked)
                          ? const LinearGradient(
                              colors: [
                                AppColors.mainGreenDark,
                                AppColors.gradientGreen,
                              ],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                            )
                          : null,
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: EdgeInsets.symmetric(
                    vertical: widget.isLong == true
                        ? 0.052 * MediaQuery.of(context).size.height
                        : 0.08 * MediaQuery.of(context).size.height),
                child: AutoSizeText(
                  widget.answer,
                  textAlign: TextAlign.center,
                  maxLines: widget.isLong == true ? 2 : 1,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: AppColors.textLightSecondary,
                        fontSize: 122,
                      ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
