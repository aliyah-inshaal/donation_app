import 'package:donation_app/screens/login_page.dart';
import 'package:donation_app/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginAndSignUp extends StatefulWidget {
  const LoginAndSignUp({super.key});

  @override
  State<LoginAndSignUp> createState() => _LoginAndSignUpState();
}

class _LoginAndSignUpState extends State<LoginAndSignUp> {
  bool isLogin = true;

  void togglePage() {
    setState(() {
      isLogin = !isLogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLogin) {
      return LoginPage(
        onPressed: togglePage,
      );
    } else {
      return SignUpPage(
        onPressed: togglePage,
      );
    }
  }
}
