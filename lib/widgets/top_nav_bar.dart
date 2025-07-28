import 'package:flutter/material.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({super.key});
  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Positioned(
            top: 60,
            left: 36,
            right: 36,
            child: Material(
              elevation: 0,
              borderRadius: BorderRadius.circular(30),
              color: Colors.blue,
              child: Container(
                height: 43,
                padding: const EdgeInsets.symmetric(horizontal: 6),
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    IconButton(
                      icon: Icon(Icons.menu),
                      color: Colors.white,
                      onPressed: () {
                      },
                    ),
                    SizedBox(width: 85),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: 'Search',
                          hintStyle: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Stack(
            children: [
              Positioned(
                top: 55,
                left: 290,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.red, width: 1.5),
                  ),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.black,
                  ),
                )
              ),
            ],
          ),
        ],
    );
}
}