import 'package:flutter/material.dart';
import 'dart:ui';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent,
      elevation: 0,
              child: ClipRRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 7, sigmaY: 7),
                  child: Container(
                    color: const Color.fromARGB(85, 255, 255, 255),
                    child: ListView(
                      padding: EdgeInsets.zero,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(top: 40.0),
                                  child: ListTile(
                    leading: IconButton(
                      icon: Icon(Icons.menu, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    title: Text(
                      'Menu',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ),
                                  ),
                                  Center(
                  child: ListTile(
                    title: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 3),
                        ),
                          child: CircleAvatar(
                            radius: 35,
                            backgroundImage: AssetImage('assets/images/avatar.png'),
                          ),
                        ),
                        SizedBox(height: 8),
                        Text('TouryAI',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        )),
                        Text('@touryai',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        )),
                      ],
                    ),
                  ),
                                  ),
                                  Divider(color: Colors.white,
                                  indent: 30.0, thickness: 1, height: 20.0,
                                  endIndent: 30.0,
                                  ),
                                  Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: ListTile(
                    leading: Icon(Icons.person, size: 30),
                    title: Text('User Profile'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    textColor: Colors.white,
                    iconColor: Colors.white,
                  ),
                                  ),
                                  Divider(color: Colors.white,
                                  indent: 30.0, thickness: 1, height: 20.0,
                                  endIndent: 70.0,
                                  ),
                                  Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: ListTile(
                    leading: Icon(Icons.add_location, size: 30),
                    title: Text('Add Destination'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    textColor: 
                    Colors.white,
                    iconColor: Colors.white,
                  ),
                                  ),
                                  Divider(color: Colors.white,
                                  indent: 30.0, thickness: 1, height: 20.0,
                                  endIndent: 70.0,
                                  ),
                                  Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: ListTile(
                    leading: Icon(Icons.bookmark, size: 30),
                    title: Text('Bookmarks'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    textColor: 
                    Colors.white,
                    iconColor: Colors.white,
                  ),
                                  ),
                                  Divider(color: Colors.white,
                                  indent: 30.0, thickness: 1, height: 20.0,
                                  endIndent: 70.0,
                                  ),
                                  Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: ListTile(
                    leading: Icon(Icons.settings, size: 30),
                    title: Text('Settings'),
                    onTap: () {
                      Navigator.pop(context);
                    },
                    textColor: 
                    Colors.white,
                    iconColor: Colors.white,
                  ),
                                  ),
                                ],
                      ),
                              ),
              ),
          ),
        );
      }
}