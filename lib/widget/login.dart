import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:poctr/custom/Custom_Elevated_Button.dart';
import 'package:poctr/custom/custom_text_button.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<StatefulWidget> createState() {
    return _LogInState();
  }
}

class _LogInState extends State<LogIn> {
  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool rememberMe = false;
  bool _obscureText = true;

  final formKey = GlobalKey<FormState>();

  void login() {
    if (formKey.currentState!.validate()) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Logging in as ${_emailController.text}')),
      );
    }
  }

  void _forgotPassword() {
    // Handle forgot password functionality
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Forgot Password tapped!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.white, // same as your Scaffold background
        statusBarIconBrightness: Brightness.dark, // dark icons for light bg
        statusBarBrightness: Brightness.light, // for iOS
      ),
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.white, Colors.white],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Container(
                  padding: const EdgeInsets.all(21),
                  child: Column(
                    children: [
                      // Add Image Widget
                      const SizedBox(
                        height: 120.8,
                      ),
                      Image.asset(
                        'assets/images/login.png', // Replace with your image path
                        height: 128,
                        width: 155,
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        'Log Into Pocktr',
                        style: TextStyle(
                          color: Color.fromARGB(248, 9, 29, 85),
                          fontWeight: FontWeight.w500,
                          fontSize: 20,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Form(
                        key: formKey,
                        child: Column(
                          children: [
                            SizedBox(
                              width: double.maxFinite,
                              height: 55,
                              child: TextFormField(
                                controller: _emailController,
                                decoration: InputDecoration(
                                  labelText: 'E-mail',
                                  labelStyle: const TextStyle(
                                      color: Color(0xFF1C284A), // #1C284A
                                      fontWeight: FontWeight.w400),
                                  filled: true,
                                  fillColor: const Color(0xFFF8F9FC),
                                  border: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(6),
                                      borderSide: BorderSide.none),
                                ),
                                keyboardType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your email';
                                  }
                                  if (!RegExp(r'^[^@]+@[^@]+\.[^@]+')
                                      .hasMatch(value)) {
                                    return 'Enter a valid email';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(height: 20),
                            SizedBox(
                              width: double.maxFinite,
                              height: 55,
                              child: TextFormField(
                                controller: _passwordController,
                                obscureText: _obscureText,
                                decoration: InputDecoration(
                                    hintText: "Password",
                                    hintStyle: const TextStyle(
                                      color: Color(0xFF1C284A), // #1C284A
                                      fontWeight: FontWeight.w400,
                                    ),
                                    filled: true,
                                    fillColor: const Color(0xFFF8F9FC),
                                    border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(6),
                                        borderSide: BorderSide.none),
                                    suffixIcon: IconButton(
                                      onPressed: () {setState(() {
                                        _obscureText = !_obscureText;
                                      });},
                                      icon: Icon(
                                        _obscureText
                                            ? Icons.visibility_off
                                            : Icons.visibility,
                                        color: const Color(0xFF1C284A),
                                      ),
                                    )),
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter your password';
                                  }
                                  if (value.length < 6) {
                                    return 'Password must be at least 6 characters';
                                  }
                                  return null;
                                },
                              ),
                            ),
                            const SizedBox(height: 8),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    Checkbox(
                                      value: rememberMe,
                                      onChanged: (value) {
                                        setState(() {
                                          rememberMe = value!;
                                        });
                                      },
                                      activeColor: const Color(0xFF29D26D),
                                      checkColor: Colors.white,
                                    ),
                                    const Text(
                                      'Remember Me',
                                      style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        color: Color.fromARGB(255, 28, 40, 74),
                                      ),
                                    ),
                                  ],
                                ),
                                CustomTextButton(
                                  onPressed: _forgotPassword,
                                  text: "Forgot Password?",
                                  fontWeight: FontWeight.w500,
                                  fontSize: 15,
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              height: 55,
                              width: double.maxFinite,
                              child: CustomElevatedButton(
                                foregroundColor: Colors.white,
                                backgroundColor:const Color.fromARGB(255, 28, 40, 74),
                                onPressed: () {},
                                elevatedButtontext: 'Log In',
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 120,
                      ),
                      CustomTextButton(
                        onPressed: () {},
                        text: "Create an account",
                        fontWeight: FontWeight.w500,
                        fontSize: 18,
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
