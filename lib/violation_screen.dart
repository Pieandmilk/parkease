import 'package:flutter/material.dart';

class ViolationScreen extends StatelessWidget {
  const ViolationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F3F6),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8B0000), // Dark red
        toolbarHeight: 80,
        automaticallyImplyLeading: false,
        title: Row(
          children: [
            const Text(
              "PE",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w900,
                fontSize: 28,
              ),
            ),
            const Spacer(),
            IconButton(
              icon: const Icon(Icons.check_box, color: Colors.white),
              onPressed: () {
                // TODO: Add action
              },
            ),
            IconButton(
              icon: const Icon(Icons.garage, color: Colors.white),
              onPressed: () {
                // TODO: Add action
              },
            ),
            IconButton(
              icon: const Icon(Icons.headset_mic, color: Colors.white),
              onPressed: () {
                // TODO: Add action
              },
            ),
            IconButton(
              icon: const Icon(Icons.credit_card, color: Colors.white),
              onPressed: () {
                // TODO: Add action
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(vertical: 30),
          decoration: BoxDecoration(
            color: const Color(0xFF8B0000), // Dark red
            borderRadius: BorderRadius.circular(16),
          ),
          child: const Center(
            child: Text(
              "NO VIOLATIONS RECORDED",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        decoration: const BoxDecoration(
          color: Color(0xFFE4D3D3),
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _BottomNavItem(icon: Icons.home, label: "Home", onTap: () {
              Navigator.pop(context);
            }),
            _BottomNavItem(icon: Icons.settings, label: "Settings", onTap: () {
              // TODO: Navigate to settings
            }),
            const CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage("assets/images/mseuf_logo.png"),
            ),
            _BottomNavItem(icon: Icons.report, label: "Violations", selected: true, onTap: () {
              // Already on this screen
            }),
            _BottomNavItem(icon: Icons.person, label: "Profile", onTap: () {
              // TODO: Navigate to profile
            }),
          ],
        ),
      ),
    );
  }
}

class _BottomNavItem extends StatelessWidget {
  final IconData icon;
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _BottomNavItem({
    required this.icon,
    required this.label,
    this.selected = false,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: selected ? Colors.red[900] : Colors.black),
          Text(
            label,
            style: TextStyle(
              fontSize: 12,
              color: selected ? Colors.red[900] : Colors.black,
              fontWeight: selected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
