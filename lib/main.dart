import 'package:everest_engineering/login/widgets/welcome.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: EdgeInsets.only(left: 20),
            child: Image.asset("assets/images/everest_logo.jpeg"),
          ),
          title: Text(
            "Everest Engineering",
            style: TextStyle(color: Colors.white),
            textDirection: TextDirection.rtl,
          ),
          backgroundColor: const Color.fromARGB(255, 43, 42, 42),
        ),
        body: Welcome(),
        bottomNavigationBar: BottomAppBar(
          color: const Color.fromARGB(255, 43, 42, 42),
          child: Center(
            child: Text(
              "Contact Us for support",

              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
