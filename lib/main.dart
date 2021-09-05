
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:with_you/HomePage.dart';
import 'onboarding.dart';
// this is comment
void main() {
  runApp(
    MaterialApp(
     debugShowCheckedModeBanner: false,
     initialRoute: "/OnBoardingPage",
     routes: {
       "/OnBoardingPage":(context) => OnBoarding(),
       "/HomePage":(context) => HomePage(),
     },

    ),

  );
}
