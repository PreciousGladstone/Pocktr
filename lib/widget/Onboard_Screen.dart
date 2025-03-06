import 'package:flutter/material.dart';
import 'package:poctr/widget/login.dart';


class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(28, 40, 74, 8),
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 92,
          ),
          child: Column(
            children: [
              const SizedBox(height: 70),

              // Add Image Widget
              Image.asset(
                'assets/images/login_images.png', // Replace with your image path
                height: 375,
                width: double.maxFinite,
              ),
              const SizedBox(
                height: 70,
              ),
              const Text(
                'Manage all your finances from the comfort of your pocket with pocktr',
                maxLines: 2,
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              const SizedBox(
                height: 35,
              ),
              SizedBox(
                height: 55,
                width: double.maxFinite,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0)),
                      elevation: 0,
                      padding: EdgeInsets.zero),
                  child: const Text(
                    'Get Started',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              SizedBox(
                height: 55,
                width: double.maxFinite,
                child: OutlinedButton(
                  onPressed: onTapLogIn(context),
                  style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),),
                      elevation: 0,
                      padding: EdgeInsets.zero),
                  child: const Text(
                    'Log In',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  onTapLogIn(BuildContext context) {
    Navigator.push(context,  MaterialPageRoute(builder: (context) =>const LogIn(),),);
  }
}
