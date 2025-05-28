import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFEFF2F5),
      appBar: AppBar(
        backgroundColor: const Color(0xFF8B0000),
        title: const Text("Settings", style: TextStyle(color: Colors.white)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            const CircleAvatar(
              radius: 40,
              backgroundColor: Colors.white,
              child: Icon(Icons.person_add, size: 40, color: Colors.red),
            ),
            const SizedBox(height: 10),
            const Text(
              'Username',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'A22-12345',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 30),

            // Menu Items
            _buildMenuItem(context, Icons.home, "Home"),
            _buildMenuItem(context, Icons.local_parking, "Parking"),
            _buildMenuItem(context, Icons.show_chart, "Statistics"),
            _buildMenuItem(context, Icons.gpp_maybe, "Violations"),
            _buildMenuItem(context, Icons.lock, "Change Password"),
            _buildMenuItem(context, Icons.contact_page, "Contact Us"),

            const Spacer(),

            // Logout Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // Implement logout logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF8B0000),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text('Log Out',style: TextStyle(color: Colors.white70, fontSize: 14),),
              ),
            ),
            const SizedBox(height: 20),
            const Text("ALL RIGHTS RESERVED. 2025", style: TextStyle(fontSize: 12, color: Colors.grey)),
          ],
        ),
      ),
    );
  }

  Widget _buildMenuItem(BuildContext context, IconData icon, String label) {
    return ListTile(
      leading: Icon(icon, color: Colors.black),
      title: Text(label),
      onTap: () {
        // Add navigation logic for each item if needed
      },
    );
  }
}
