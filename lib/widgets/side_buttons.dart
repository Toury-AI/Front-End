import 'package:flutter/material.dart';

class SideButtons extends StatelessWidget {
  const SideButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height:20),
        FloatingActionButton.small(
          shape: const CircleBorder(), 
          backgroundColor: Colors.grey[300],
          heroTag: 'settings',
          onPressed: () {
            //logic
          },
          child: Icon(Icons.settings),
        ),
          SizedBox(height:20),
          FloatingActionButton.small(
          shape: const CircleBorder(), 
          backgroundColor: Colors.grey[300],
          heroTag: 'minimize',
          onPressed: () {
            // logic
          },
          child: Icon(Icons.arrow_forward),
        ),
         SizedBox(height:20),
         FloatingActionButton.small(
          shape: const CircleBorder(), 
          backgroundColor: Colors.grey[300],
          heroTag: 'share',
          onPressed: () {
            // logic
          },
          child: Icon(Icons.share),
        ),
      ],
    );
  }
}
