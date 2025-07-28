import 'package:flutter/material.dart';
import 'package:toury_app/widgets/bottom_nav_bar.dart';
import 'package:toury_app/widgets/top_nav_bar.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TopNavBar(),
      // Add side buttons here later
      bottomNavigationBar: BottomNavBar(),
    );
  }
}

