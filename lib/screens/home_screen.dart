import 'package:everest_engineering/network/person_list.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      body: Center(child: PersonList()),
    );
  }
}
