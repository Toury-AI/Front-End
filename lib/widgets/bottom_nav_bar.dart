import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: 0, // highlights the first icon since tap functionality not added yet
      onTap: (index) {
        // will add in functionality here later when every button is tapped
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.explore),
          label: 'Explore',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.tour),
          label: 'Tours',
        ),
        
      ],
    );
  }
}
