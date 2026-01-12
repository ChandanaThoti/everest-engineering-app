import 'package:everest_engineering/src/widgets/login_fields.dart';
import 'package:flutter/material.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: EdgeInsets.only(top: 50, left: 20, right: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.end,
          spacing: 25,
          children: [
            LoginFields(),
            ElevatedButton(
              onPressed: () => {},
              style: ButtonStyle(
                backgroundColor: WidgetStateProperty.all<Color>(
                  const Color.fromARGB(255, 33, 32, 32),
                ),
                foregroundColor: WidgetStateProperty.all<Color>(
                  const Color.fromARGB(255, 245, 243, 243),
                ),
              ),
              child: Text("Login"),
            ),
          ],
        ),
      ),
    );
  }
}
