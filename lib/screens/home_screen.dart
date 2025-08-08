import 'package:flutter/material.dart';
import 'package:toury_app/widgets/bottom_nav_bar.dart';
import 'package:toury_app/widgets/top_nav_bar.dart';
import 'package:toury_app/widgets/side_buttons.dart';
import 'package:toury_app/widgets/drawer.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: CustomDrawer(),
      body: Stack(
      children: [
        TopNavBar(),
        Positioned(
          bottom: 50,
          right: 16,
          child: SideButtons(),
        ),
      ],
    ),
      bottomNavigationBar: Padding(padding: const EdgeInsets.only(bottom: 20), 
      child: BottomNavBar()),
      
    );
  }
  
}

