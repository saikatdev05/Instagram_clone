import 'package:flutter/material.dart';
import 'package:insta_clone/screen/login_screen.dart';
import 'package:insta_clone/screen/signup_screen.dart';

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool a = true;

  void go() {
    setState(() {
      a = !a;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (a) {
      return   LoginScreen(go);
    } else {
      return SignupScreen(go);
    }
  }
}
