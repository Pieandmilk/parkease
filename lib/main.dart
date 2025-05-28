import 'package:flutter/material.dart';
import 'splash_intro_widget.dart'; // Your splash intro screen
import 'login_selection.dart'; // Your login screen

void main() {
  runApp(const ParkEaseApp());
}

class ParkEaseApp extends StatelessWidget {
  const ParkEaseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ParkEase',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'YourFontName'), // Optional
      home: const SplashIntro(),
    );
  }
}
