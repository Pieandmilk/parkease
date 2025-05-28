import 'package:flutter/material.dart';
import 'dart:async';
import 'login_selection.dart';

class SplashIntro extends StatefulWidget {
  const SplashIntro({super.key});

  @override
  State<SplashIntro> createState() => _SplashIntroState();
}

class _SplashIntroState extends State<SplashIntro> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginSelection()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF7C0A02), // Maroon background
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // PE branding
            const Text(
              "PE",
              style: TextStyle(
                fontSize: 64,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "ParkEase",
              style: TextStyle(
                fontSize: 24,
                color: Colors.white70,
              ),
            ),

            const SizedBox(height: 100), // Space between main content and version

            // Version info at the bottom
            const Text(
              "v2.0",
              style: TextStyle(
                fontSize: 14,
                color: Colors.white54,
              ),
            ),
          ],
        ),
      ),
    );
  }
}