// ignore_for_file: avoid_print

import 'package:flutter/material.dart'; //Import this so you can access the runApp function & core widgets
import 'package:quiz_app/style.dart'; // All styling can be found here
import 'package:quiz_app/strings.dart'; // All strings can be found here
import 'package:quiz_app/assets.dart'; // All assets can be found here
//import 'package:quiz_app/start_screen.dart'; // All assets can be found here

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

@override
  State<QuestionsScreen> createState() {
    return _QuestionsScreen();
  }
}

class _QuestionsScreen extends State<QuestionsScreen> { //_ denotes a private class, only accessible in this file
 @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: titlePadding,
              child: Text(
                titleText,
                style: titleFontStyle,
              ),
            ),
            OutlinedButton.icon(
              onPressed: () {
                print('Button Clicked'); //TODO: Remove Print Statements
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