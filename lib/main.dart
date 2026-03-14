import 'package:everest_engineering/widgets/welcome.dart';

import 'package:flutter/material.dart';

void main() {
  // coverage:ignore-start
  runApp(const MyApp());
  // coverage:ignore-end
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(body: Welcome()),
      debugShowCheckedModeBanner: false,
    );
  }
}
