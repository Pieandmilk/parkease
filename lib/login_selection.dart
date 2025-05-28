import 'package:flutter/material.dart';
import 'student_login_screen.dart';
import 'faculty_login_screen.dart';
class LoginSelection extends StatelessWidget {
  const LoginSelection({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // ✅ Background image
          SizedBox.expand(
            child: Image.asset(
              'assets/images/car_bg.jpg', // double check your filename!
              fit: BoxFit.cover,
            ),
          ),

          // ✅ Maroon overlay
          Container(color: Colors.red.shade900.withOpacity(0.6)),

          // ✅ Foreground content
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
              child: Column(
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "Park Smarter",
                    style: TextStyle(fontSize: 32, color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    "Inside MSEUF Campus",
                    style: TextStyle(fontSize: 14, color: Colors.white70),
                  ),
                  const SizedBox(height: 24),
                  Image.asset("assets/images/car.png", height: 100),
                  const SizedBox(height: 30),
                  const Text(
                    "You want Parking?\nhere you go! w/\nParkEase!",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  const Spacer(),
                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: Colors.white24,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      children: [
                        const Text(
                          "Find it here, Try it now",
                          style: TextStyle(color: Colors.white),
                        ),
                        const SizedBox(height: 12),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [

                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const StudentLoginScreen()),
                                );
                              },
                              child: const Text("Student"),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(builder: (context) => const FacultyLoginScreen()),
                                );
                              },
                              child: const Text("Faculty"),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
