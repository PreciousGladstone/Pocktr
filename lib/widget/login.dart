import 'package:flutter/material.dart';
import 'package:poctr/custom/Custom_Elevated_Button.dart';

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
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            
            
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  // Add Image Widget
                  const SizedBox(height: 70,),
                  Image.asset(
                    'assets/images/onboard_image.png', // Replace with your image path
                    height: 128,
                    width: double.maxFinite,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  const Text(
                    'Log Into Pocktr',
                    style: TextStyle(
                      color: Color.fromARGB(248, 9, 29, 85),
                    ),
                  ),
                  const SizedBox(
                    height: 24,
                  ),
                  Form(
                    key:formKey,
                    child: Column(
                      children: [
                        TextFormField(
                          controller: _emailController,
                          decoration: InputDecoration(
                            labelText: 'E-mail',
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide.none),
                          ),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Please enter your email';
                            }
                            if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                              return 'Enter a valid email';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(height: 16),
                        
                          SizedBox(
                            width: double.maxFinite,
                          child: TextFormField(
                            controller: _passwordController,
                            decoration: InputDecoration(
                              hintText: "Password",
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(6),
                                borderSide: BorderSide.none
                              ),
                              
                            ),
                            obscureText: true,
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
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Checkbox(
                                  value: rememberMe,
                                  onChanged: (value) {
                                    setState(() {
                                      rememberMe = value!;
                                    });
                                  },
                                ),
                                const Text('Remember Me'),
                              ],
                            ),
                            TextButton(
                              onPressed: _forgotPassword,
                              child: const Text('Forgot Password?'),
                            ),
                          ],
                        ),
                        const SizedBox(height: 30,),
                        SizedBox(
                          height: 55,
                          width: double.maxFinite,
                          child: CustomELevatedButton(
                            onTap: () {},
                            
                             buttonText:'Log In' // const Text(
                            //   'Log In',
                            //   style: TextStyle(
                            //     color: Colors.white,
                            //     fontSize: 18,
                            //   ),
                            // ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
