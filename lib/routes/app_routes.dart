import 'package:flutter/material.dart';
import 'package:poctr/widget/Onboard_Screen.dart';
import 'package:poctr/widget/login.dart';

class AppRoutes {
  static const String initialRoute = '/';
  static const String logIn = '/login';


  
  static Map<String, WidgetBuilder>  routes = {
    initialRoute :(context) => const OnboardScreen(),
    logIn: (context) => const LogIn(),
  };
}
