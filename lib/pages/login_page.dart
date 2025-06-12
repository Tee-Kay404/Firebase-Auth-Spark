import 'package:flutter/material.dart';
import 'package:modern_login_app/components/my_buttons.dart';
import 'package:modern_login_app/components/my_textfield.dart';
import 'package:modern_login_app/components/square_tile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // text editing controller
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  // void signIn() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: _emailController.text,
  //     password: _passwordController.text,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 30),
              // lock logo
              const Icon(
                Icons.lock,
                size: 100,
              ),
              const SizedBox(height: 40),
              // welcome text
              const Text(
                'Welcome back you\'ve been missed',
                style: TextStyle(fontSize: 16),
              ),

              const SizedBox(height: 30),

              // username textfield
              MyTextfield(
                hintText: 'Enter email',
                controller: _emailController,
              ),

              // password textfield
              const SizedBox(
                height: 20,
              ),
              MyTextfield(
                hintText: 'Password',
                controller: _passwordController,
                obscureText: true,
              ),

              const SizedBox(
                height: 10,
              ),

              // forgot password?
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 40.0),
                    child: Text(
                      'Forgot Password?',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 20),
              // sign in button
              MyButtons(onPressed: () {}),
              const SizedBox(
                height: 10,
              ),
              // or continue with =>
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        '0r continue with',
                        style: TextStyle(color: Colors.grey[700], fontSize: 15),
                      ),
                    ),
                    Expanded(
                      child: Divider(
                        thickness: 0.5,
                        color: Colors.grey[400],
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(
                height: 10,
              ),
              // google + apple sign in button
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 100.0),
                child: Row(
                  children: [
                    SquareTile(
                      imagePath:
                          'lib/images/vecteezy_google-logo-transparent-background_46861647.png',
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    SquareTile(
                      imagePath: 'lib/images/vecteezy_apple_1199813 (1).png',
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),
              // not a memeber? register now
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Not a member?',
                      style: TextStyle(
                        fontSize: 16,
                      )),
                  SizedBox(
                    width: 5,
                  ),
                  Text(
                    'Register now',
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
