import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.garage, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.headset_mic, color: Colors.white),
              onPressed: () {},
            ),
            IconButton(
              icon: const Icon(Icons.credit_card, color: Colors.white),
              onPressed: () {},
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Student Dashboard",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Row(
              children: const [
                Text("INFO", style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(width: 16),
                Text("STATS", style: TextStyle(color: Colors.grey)),
              ],
            ),
            const Divider(color: Colors.black54),
            const SizedBox(height: 10),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF8B0000),
                borderRadius: BorderRadius.circular(16),
              ),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 36,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 40, color: Colors.red),
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text("Welcome to Your dashboard!",
                            style: TextStyle(color: Colors.white70)),
                        SizedBox(height: 4),
                        Text("NAME PLACEHOLDER",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                                color: Colors.white)),
                        Text(
                          "DEPARTMENT - AFFILIATION\nID TYPE: AI2 - 34456",
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Container(
                    height: 120,
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(color: Colors.grey.shade300),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: const Center(child: Text("INFO PLACEHOLDER")),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      Container(
                        height: 55,
                        margin: const EdgeInsets.only(bottom: 10),
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(child: Text("INFO PLACEHOLDER")),
                      ),
                      Container(
                        height: 55,
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.grey.shade300),
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: const Center(child: Text("INFO PLACEHOLDER")),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: TextButton(
                onPressed: () {
                  // TODO: Navigate to edit profile screen
                },
                child: const Text(
                  "Click Here to Edit Profile",
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),
          ],
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
              // TODO: Navigate to Settings
            }),
            const CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage("assets/images/mseuf_logo.png"),
            ),
            _BottomNavItem(icon: Icons.report, label: "Violations", onTap: () {
              // TODO: Navigate to Violations
            }),
            _BottomNavItem(icon: Icons.person, label: "Profile", selected: true, onTap: () {}),
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
