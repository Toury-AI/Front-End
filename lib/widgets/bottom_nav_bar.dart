import 'dart:ui';
import 'package:flutter/material.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: BackdropFilter(
        filter: ImageFilter.blur(),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 60, vertical: 15), // outside of box spacing
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10), //inside
          decoration: BoxDecoration(
            color:Colors.white.withAlpha(200),
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: Colors.white,width: 1),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                    Icon(Icons.explore, color: Colors.black),
                    SizedBox(height: 3),
                    Text('Explore', style: TextStyle(color: Colors.black,fontSize:10, fontFamily: 'SF Pro')),
                ]
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                    Icon(Icons.home, color: Colors.black),
                    SizedBox(height: 3),
                    Text('Home', style:TextStyle(color: Colors.black,fontSize:10, fontFamily: 'SF Pro')),
                ]
              ),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                    Icon(Icons.tour, color: Colors.black),
                    SizedBox(height: 3),
                    Text('Tours', style: TextStyle(color: Colors.black,fontSize:10, fontFamily: 'SF Pro')),
                ]
              )
              
            ],
          ),
        ),
      ),
    );
  }
}