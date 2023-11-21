// ignore_for_file: avoid_print

import 'package:flutter/material.dart'; //Import this so you can access the runApp function & core widgets
import 'package:quiz_app/style.dart'; // All styling can be found here
//import 'package:quiz_app/strings.dart'; // All strings can be found here
//import 'package:quiz_app/assets.dart'; // All assets can be found here
import 'package:quiz_app/start_screen.dart'; // All assets can be found here
import 'package:quiz_app/questions_screen.dart'; // All assets can be found here

class Quiz extends StatefulWidget {
  const Quiz({super.key});

@override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> { //_ denotes a private class, only accessible in this file
 /*
 Widget? activeScreen;

@override
  void initState() {
    activeScreen = StartScreen(switchScreen);
    super.initState();
  }
 */
var activeScreen = 'start-screen';

 void switchScreen(){ //sunction that gets passed to the Start Quiz button when the start_screen is loaded
  setState(() {
    activeScreen = 'questions-screen';
  });
 }

 @override
  Widget build(context) {

    final screenWdget = activeScreen == 'start-screen' //condition
        ? StartScreen(switchScreen) //if true
        : const QuestionsScreen(); //if false

    return MaterialApp(
      home: Scaffold(
        backgroundColor: appBGColor,
        //body: activeScreen,
        body: screenWdget,
      ),
    ); 
  }
}