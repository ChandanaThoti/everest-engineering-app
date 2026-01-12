import 'package:everest_engineering/main.dart';
import 'package:flutter/material.dart';
import 'package:everest_engineering/login/widgets/login_form.dart';

class Welcome extends MyApp {
  const Welcome({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 20,
        children: [
          Text(
            "Welcome to Everest Engineering",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text("SignIn to Continue", style: TextStyle(fontSize: 20)),
          LoginForm(),
        ],
      ),
    );
  }
}
