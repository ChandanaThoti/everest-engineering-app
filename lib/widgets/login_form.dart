import 'package:flutter/material.dart';

class LoginState extends StatefulWidget {
  const LoginState({super.key});
  @override
  State<LoginState> createState() => _LoginForm();
}

class _LoginForm extends State<LoginState> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  void _login() {
    String username = _usernameController.text;
    String password = _passwordController.text;

    if (username != '' && password != '') {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: const Text("Confirm to Login"),
          content: const Text("Login Successful"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("okay"),
            ),
          ],
        ),
      );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          content: const Text("Please fill all the fields"),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text("okay"),
            ),
          ],
        ),
      );
    }
    _usernameController.clear();
    _passwordController.clear();
  }

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
            TextFormField(
              controller: _usernameController,
              decoration: InputDecoration(
                hintText: "Chandana",
                labelText: "User Name",
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                hintText: "password@123",
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),
            ElevatedButton(
              onPressed: () => _login(),
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
