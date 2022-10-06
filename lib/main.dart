import 'package:flutter/material.dart';
import 'package:untitled4/View/pages/Home/News2.dart';
import 'package:untitled4/View/pages/Login.dart';
import 'package:untitled4/View/counterScreen.dart';
import 'package:untitled4/View/pages/Splash.dart';
import 'package:untitled4/ViewModel/database/network/dio_helper.dart';

import 'View/pages/Settings/Settings.dart';
import 'ViewModel/database/network/end_points.dart';

void main() async{
await DioHelper.init();
runApp( MaterialApp(home: SplashScreen()));
}






