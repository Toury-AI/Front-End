import 'package:flutter/material.dart';
import 'package:toury_app/widgets/bottom_nav_bar.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Placeholder for TopNavBar
          Positioned(top: 0, left: 0, right: 0, child: Placeholder()),

          // Add side buttons here later
        ],
      ),
      // Placeholder for BottomNavBar
      bottomNavigationBar: BottomNavBar() ,
    );
  }
}

