import 'package:everest_engineering/screens/home_screen.dart';
import 'package:everest_engineering/screens/profile.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});
  @override
  Widget build(BuildContext context) {
    final userName = ModalRoute.of(context)!.settings.arguments as String;
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: TabBarView(
          children: <Widget>[
            Center(child: const HomeScreen()),
            Center(child: Profile(userName: userName)),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
          child: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.person)),
            ],
          ),
        ),
      ),
    );
  }
}
