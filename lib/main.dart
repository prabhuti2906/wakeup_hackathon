
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:with_you/HomePage.dart';
import 'package:with_you/register.dart';
import 'package:with_you/signin.dart';
import 'onboarding.dart';



void main() {
  runApp(
    MaterialApp(
     debugShowCheckedModeBanner: false,
     initialRoute: "/OnBoardingPage",
     routes: {
       "/OnBoardingPage":(context) => OnBoarding(),
       "/HomePage":(context) => HomePage(),
       "/SignIn":(context) => SignIn(),
       "/RegisterPage":(context) => RegisterPage(),


     },

    ),

  );
}
