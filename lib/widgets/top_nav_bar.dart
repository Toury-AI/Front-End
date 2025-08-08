import 'package:flutter/material.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50, left: 35, right: 35),
      height: 2000,
      width: 360,
      color: Colors.transparent,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, right: 2),
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
                  child: IconButton(
                    icon: Icon(Icons.menu, color: Colors.white),
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                  ),
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 4),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 1.5),
                ),
                child: CircleAvatar(
                  radius: 26,
                  backgroundColor: Colors.black,
                ),
              ),
            ],
          )
        ]
      ),
    );
}
}