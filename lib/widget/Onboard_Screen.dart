import 'package:flutter/material.dart';
import 'package:poctr/widget/login.dart';
import 'package:poctr/custom/custom_elevated_button.dart';


class OnboardScreen extends StatelessWidget {
  const OnboardScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 28, 40, 74),
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          padding: const EdgeInsets.only(
            left: 21,
            right: 21,
            bottom: 92,
          ),
          child: Column(
            children: [
              const SizedBox(height: 200),

              // Add Image Widget
              Image.asset(
                'assets/images/onboard_image.png', // Replace with your image path
                height: 264.48,
                width: double.maxFinite,
              ),
              const SizedBox(
                height: 48.5,
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
                child: CustomElevatedButton(
                  foregroundColor: const Color.fromARGB(255, 28, 40, 74),
                  backgroundColor: Colors.white,
                  onPressed: () {},
                  fontSize: 18,
                  elevatedButtontext: 'Get Started',
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                height: 55,
                width: double.maxFinite,
                child: OutlinedButton(
                  onPressed: () => onTapLogIn(context),
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
