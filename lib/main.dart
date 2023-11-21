// ignore_for_file: avoid_print

import 'package:flutter/material.dart'; //Import this so you can access the runApp function & core widgets
import 'package:quiz_app/quiz.dart'; // All assets can be found here

//import 'package:quiz_app/style.dart'; // All styling can be found here
//import 'package:quiz_app/strings.dart'; // All strings can be found here
//import 'package:quiz_app/assets.dart'; // All assets can be found here
//import 'package:quiz_app/start_screen.dart'; // All assets can be found here

void main() { //This must be called main -Define -Automatically executed
  runApp(const Quiz()); //This Function must be included in every Flutter App -Execute, needs a widget
}