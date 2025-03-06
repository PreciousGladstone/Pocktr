import 'package:flutter/material.dart';
import 'package:poctr/routes/app_routes.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: OnboardScreen(),
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      
    );
  }

}