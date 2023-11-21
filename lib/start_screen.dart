// ignore_for_file: avoid_print

import 'package:flutter/material.dart'; //Import this so you can access the runApp function & core widgets
import 'package:quiz_app/style.dart'; // All styling can be found here
import 'package:quiz_app/strings.dart'; // All strings can be found here
import 'package:quiz_app/assets.dart'; // All assets can be found here

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context){
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: imagePadding,
              child: Image.asset(
                logoImage,
                width: largeImageWidth,
                color: sixtyPercentWhite,
              ),
            ),
            const Padding(
              padding: titlePadding,
              child: Text(
                titleText,
                style: titleFontStyle,
              ),
            ),
            OutlinedButton.icon(
              onPressed: () {
                startQuiz();
                //print('Button Clicked'); //TODO: Remove Print Statements
              },
              style: TextButton.styleFrom(
                padding: buttonPadding,
              ), 
              icon: const Icon(rightArrowIcon),
              label: const Text(
                stratQuizBButtonText,
                style: bbuttonFontStyle,
              ),
            ),
          ], // children
        ),
      );
  }
}