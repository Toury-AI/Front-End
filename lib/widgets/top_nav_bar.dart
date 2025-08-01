import 'package:flutter/material.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
        children: [
          Positioned(
            top: 62,
            left: 36,
            right: 36,
            child: Expanded(
              child: SizedBox(
                height: 40,
                child: SearchBar(
                hintText: 'Ask me anything',
                backgroundColor: MaterialStateProperty.all(Color(0xFF0F3966).withOpacity(0.8)),
                textStyle: MaterialStateProperty.all(const TextStyle(color: Colors.white)),
                hintStyle: MaterialStateProperty.all(const TextStyle(color: Colors.white)),
                elevation: MaterialStateProperty.all(0),
                leading: Padding(
                  padding: const EdgeInsets.only(right: 40.0),
                  child: DrawerButton(
                            color: Colors.white,
                            onPressed: () {
                              Scaffold.of(context).openDrawer();
                            },
                          ),
                ),
              ),
              ),
            ),
              ),
          Positioned(
                top: 55,
                left: 290,
                right: 0,
                child: Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 1.5),
                  ),
                  child: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.black,
                  ),
                )
              ),
        ],
    );
}
}