import 'dart:async';

import 'package:flutter/material.dart';
import 'package:untitled4/View/pages/Home/Home.dart';
import 'package:untitled4/View/pages/Home/News.dart';
import 'package:untitled4/View/pages/Login.dart';
import 'package:untitled4/View/pages/Settings/Settings.dart';
import 'package:untitled4/View/pages/Signup.dart';




class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  get width => null;


  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3),
    ()=> Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Container(
            color: Colors.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("images/logo.png"),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                  child: CircularProgressIndicator(
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}