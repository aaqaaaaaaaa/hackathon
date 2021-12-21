import'package:flutter/material.dart';
import 'package:untitled/screens/homePage.dart';
import 'package:untitled/screens/onboarding_screen.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Onboarding UI',
      debugShowCheckedModeBanner: false,
      home:
      HomePage()
      // OnboardingScreen(),
    );
  }
}