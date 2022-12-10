// ignore_for_file: import_of_legacy_library_into_null_safe, library_private_types_in_public_api, file_names, prefer_const_constructors, avoid_print, override_on_non_overriding_member

import 'package:need_a_pi_project/screens/login.dart';
import 'package:flutter/material.dart';
import 'package:need_a_pi_project/screens/signup.dart';
import 'package:sk_onboarding_screen/sk_onboarding_model.dart';
import 'package:sk_onboarding_screen/sk_onboarding_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override

  final pages = [
    SkOnboardingModel(
        title: 'Consult a Private Investigator',
        description:
        'Find the right Private Investigators and you will get your money\'s worth',
        titleColor: Colors.black,
        descripColor: Color.fromARGB(255, 44, 48, 46),
        imagePath: 'assets/images/giphy.gif'),
    SkOnboardingModel(
        title: '24 Hours Service',
        description:
        'We make Service fast, simple and cost-effective',
        titleColor: Colors.black,
        descripColor:  Color.fromARGB(255, 44, 48, 46),
        imagePath: 'assets/images/giphy.gif'),
    SkOnboardingModel(
        title: 'A new PI Appointment App',
        description: 'Consult the right PI For the right Problem',
        titleColor: Colors.black,
        descripColor:  Color.fromARGB(255, 44, 48, 46),
        imagePath: 'assets/images/giphy.gif'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SKOnboardingScreen(
        bgColor: Color.fromARGB(255, 232, 188, 188),
        themeColor: Color.fromARGB(255, 47, 33, 168),
        pages: pages,
        skipClicked: (value) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LogInPage()));
        },
        getStartedClicked: (value) {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LogInPage()));
          //print("Get Started");
        },
      ),

    );
  }
}