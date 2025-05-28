import 'package:flutter/material.dart';
import 'reserve_screen.dart';
import 'setting_screen.dart';
import 'violation_screen.dart';
import 'profile_screen.dart';
import 'get_help_screen.dart';

class MainMenuScreen extends StatelessWidget {
  final String username;

  const MainMenuScreen({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFD0312D),
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {
            // TODO: Implement side drawer if needed
          },
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Review", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GetHelpScreen()),
                );
              },
              child: const Text(
                "Get Help",
                style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
            const Text("Privacy", style: TextStyle(color: Colors.black)),
          ],
        ),

        toolbarHeight: 60,
      ),
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                // Background image
                Positioned.fill(
                  child: Opacity(
                    opacity: 0.3,
                    child: Image.asset(
                      'assets/images/car_bg.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // Main content
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      const SizedBox(height: 10),
                      const CircleAvatar(
                        radius: 30,
                        backgroundColor: Colors.white,
                        child: Icon(Icons.person_add, size: 30, color: Colors.red),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        "WELCOME $username!".toUpperCase(),
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Image.asset('assets/images/car.png', height: 80),
                      const SizedBox(height: 10),
                      const Text(
                        "Envergans!! Experience convenient\nparking w/ ParkEase!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Please Select Service",
                          style: TextStyle(color: Colors.white70, fontSize: 14),
                        ),
                      ),
                      const SizedBox(height: 10),

                      // Buttons
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          _serviceButton(
                            context,
                            icon: Icons.directions_car_filled,
                            label: "Reserve",
                            onTap: () {
                              Navigator.pushReplacement(
                                context,
                                MaterialPageRoute(builder: (context) => ReserveScreen()),
                              );
                            },
                          ),
                          _serviceButton(
                            context,
                            icon: Icons.send,
                            label: "Contact Us",
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const GetHelpScreen()),
                              );
                            },
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Bottom Navigation
          Container(
            height: 70,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _BottomNavItem(icon: Icons.home, label: "Home", onTap: () {
                  // Already on Home
                }),
                _BottomNavItem(icon: Icons.settings, label: "Settings", onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()),
                  );
                }),
                const CircleAvatar(
                  radius: 24,
                  backgroundImage: AssetImage("assets/images/mseuf_logo.png"),
                ),
                _BottomNavItem(icon: Icons.report, label: "Violations", onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ViolationScreen()),
                  );

                }),
                _BottomNavItem(icon: Icons.person, label: "Profile", onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const ProfileScreen()),
                  );
                }),
              ],
            ),
          ),
        ],
      ),
    );
  }

  static Widget _serviceButton(BuildContext context,
      {required IconData icon, required String label, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 120,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white70,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 40, color: Colors.red[800]),
            const SizedBox(height: 8),
            Text(label, style: const TextStyle(color: Colors.black)),
          ],
        ),
      ),
    );
  }
}

class _BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback? onTap;

  const _BottomNavItem({required this.icon, required this.label, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.red),
          Text(label, style: const TextStyle(fontSize: 12, color: Colors.black)),
        ],
      ),
    );
  }
}
