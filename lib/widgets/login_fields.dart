import 'package:flutter/material.dart';

class LoginFields extends StatelessWidget {
  const LoginFields({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      spacing: 25,
      children: [
        TextFormField(
          decoration: InputDecoration(
            hintText: "Chandana",
            labelText: "User Name",
            border: OutlineInputBorder(),
          ),
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: "password@123",
            labelText: "Password",
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}
