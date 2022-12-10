// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:need_a_pi_project/onboarding_Screen.dart';
import 'package:flutter/material.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {

    super.initState();
    Timer(
      const Duration(seconds: 7), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const OnBoardingScreen())),
    );

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.white,
      body: Column(
        children: [
          const SizedBox(height: 160,),
          Image.asset("assets/icons/111-1115761_detective-png-detective-character-concept-art-transparent-png.jpg", height: 450.0,
                width: 90),

          Row(
            children: [
              const SizedBox(width: 100,),
              const Text("Welcome", style: TextStyle(color: Colors.white, fontSize: 12),)],
          ),
          const SizedBox(height: 70,),
          Row(
            children: const [
              SizedBox(width: 100,),
              Text(" App Made With Flutter", style: TextStyle(color: Color(0xFF929794), fontSize: 14),)],
          ),
          const SizedBox(height: 20,),
          Row(children: const [
            SizedBox(width: 100,),
            Text("By Pradyoth", style: TextStyle(color: Colors.white, fontSize: 15, decoration: TextDecoration.underline),)
          ],)
          
        ],
      ),
    );
  }
}