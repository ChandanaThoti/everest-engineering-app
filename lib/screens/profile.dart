import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  final String userName;
  const Profile({super.key, required this.userName});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          spacing: 20,
          children: [
            Text(
              "Hello $userName",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            Text("Can edit your profile", style: TextStyle(fontSize: 20)),
          ],
        ),
      ),
    );
  }
}
