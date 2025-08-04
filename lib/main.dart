import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
// import 'package:device_preview/device_preview.dart';

void main() {
  runApp(MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TouryAI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const HomeScreen(), // landing page
      debugShowCheckedModeBanner: false, 
    );
  }
}
